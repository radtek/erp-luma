using AceSoft.RetailPlus.Security;

namespace AceSoft.RetailPlus.MasterFiles._Position
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using AceSoft.RetailPlus.Data; 

	public partial  class __List : System.Web.UI.UserControl
	{
		protected PagedDataSource PageData = new PagedDataSource();

		#region Web Form Methods

		protected void Page_Load(object sender, System.EventArgs e)
		{
			ManageSecurity();

			if (!IsPostBack)
				if (Visible)
				{
					LoadList();
					cmdDelete.Attributes.Add("onClick", "return confirm_delete();");
					imgDelete.Attributes.Add("onClick", "return confirm_delete();");
				}
		}


		#endregion
		
		#region Web Form Designer generated code

		override protected void OnInit(EventArgs e)
		{
			InitializeComponent();
			base.OnInit(e);
		}
		private void InitializeComponent()
		{

		}

		#endregion

		#region Web Control Methods

        protected void imgAdd_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			string stParam = "?task=" + Common.Encrypt("add",Session.SessionID);			
			Response.Redirect("Default.aspx" + stParam);
		}
		protected void cmdAdd_Click(object sender, System.EventArgs e)
		{
			string stParam = "?task=" + Common.Encrypt("add",Session.SessionID);			
			Response.Redirect("Default.aspx" + stParam);
		}
        protected void imgDelete_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			if (Delete())
				LoadList();
		}
		protected void cmdDelete_Click(object sender, System.EventArgs e)
		{
			if (Delete())
				LoadList();
		}
        protected void idEdit_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Update();
		}
		protected void cmdEdit_Click(object sender, System.EventArgs e)
		{
			Update();
		}
        protected void lstItem_ItemDataBound(object sender, DataListItemEventArgs e)
		{
			if(e.Item.ItemType == ListItemType.Header)
			{
				LoadSortFieldOptions(e);
			}
			else if(e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
			{
                DataRowView dr = (DataRowView)e.Item.DataItem;
                ImageButton imgItemDelete = (ImageButton)e.Item.FindControl("imgItemDelete");
                ImageButton imgItemEdit = (ImageButton)e.Item.FindControl("imgItemEdit");

                HtmlInputCheckBox chkList = (HtmlInputCheckBox)e.Item.FindControl("chkList");
                chkList.Value = dr["PositionID"].ToString();
                imgItemDelete.Enabled = cmdDelete.Visible; if (!imgItemDelete.Enabled) imgItemDelete.ImageUrl = Constants.ROOT_DIRECTORY + "/_layouts/images/blank.gif";
                imgItemEdit.Enabled = cmdEdit.Visible; if (!imgItemEdit.Enabled) imgItemEdit.ImageUrl = Constants.ROOT_DIRECTORY + "/_layouts/images/blank.gif";
                if (imgItemDelete.Enabled) imgItemDelete.Attributes.Add("onClick", "return confirm_item_delete();");

                Label lblPositionCode = (Label)e.Item.FindControl("lblPositionCode");
				lblPositionCode.Text = dr["PositionCode"].ToString();

                HyperLink lnkPositionName = (HyperLink)e.Item.FindControl("lnkPositionName");
                lnkPositionName.Text = dr["PositionName"].ToString();
                lnkPositionName.NavigateUrl = "Default.aspx?task=" + Common.Encrypt("details", Session.SessionID) + "&id=" + Common.Encrypt(chkList.Value, Session.SessionID);

			}
		}
        protected void lstItem_ItemCommand(object sender, DataListCommandEventArgs e)
        {
            HtmlInputCheckBox chkList = (HtmlInputCheckBox)e.Item.FindControl("chkList");
            string stParam = string.Empty;
            switch (e.CommandName)
            {
                case "imgItemDelete":
                    Positions clsPosition = new Positions();
                    clsPosition.Delete(chkList.Value);
                    clsPosition.CommitAndDispose();

                    LoadList();
                    break;
                case "imgItemEdit":
                    stParam = "?task=" + Common.Encrypt("edit", Session.SessionID) + "&id=" + Common.Encrypt(chkList.Value, Session.SessionID);
                    Response.Redirect("Default.aspx" + stParam);
                    break;
            }
        }
		protected void cboCurrentPage_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			LoadList();
		}

		#endregion

		#region Private Methods

		private void ManageSecurity()
		{
			Int64 UID = Convert.ToInt64(Session["UID"]);
			AccessRights clsAccessRights = new AccessRights(); 
			AccessRightsDetails clsDetails = new AccessRightsDetails();

			clsDetails = clsAccessRights.Details(UID,(int) AccessTypes.Position); 
			imgAdd.Visible = clsDetails.Write; 
			cmdAdd.Visible = clsDetails.Write; 
			imgDelete.Visible = clsDetails.Write; 
			cmdDelete.Visible = clsDetails.Write; 
			cmdEdit.Visible = clsDetails.Write; 
			idEdit.Visible = clsDetails.Write; 
			lblSeparator1.Visible = clsDetails.Write;
			lblSeparator2.Visible = clsDetails.Write;

			clsAccessRights.CommitAndDispose();
		}
		private void LoadSortFieldOptions(DataListItemEventArgs e)
		{
			string stParam = null;		

			SortOption sortoption = SortOption.Ascending;
			if (Request.QueryString["sortoption"]!=null)
				sortoption = (SortOption) Enum.Parse(typeof(SortOption), Common.Decrypt(Request.QueryString["sortoption"], Session.SessionID), true);

			if (sortoption == SortOption.Ascending)
				stParam += "?sortoption=" + Common.Encrypt(SortOption.Desscending.ToString("G"), Session.SessionID);
			else if (sortoption == SortOption.Desscending)
				stParam += "?sortoption=" + Common.Encrypt(SortOption.Ascending.ToString("G"), Session.SessionID);

			System.Collections.Specialized.NameValueCollection querystrings = Request.QueryString;;
			foreach(string querystring in querystrings.AllKeys)
			{
				if (querystring.ToLower() != "sortfield" && querystring.ToLower() != "sortoption") 
					stParam += "&" + querystring + "=" + querystrings[querystring].ToString();
			}

			HyperLink SortByPositionCode = (HyperLink) e.Item.FindControl("SortByPositionCode");
			HyperLink SortByPositionName = (HyperLink) e.Item.FindControl("SortByPositionName");

			SortByPositionCode.NavigateUrl = "Default.aspx" + stParam + "&sortfield=" + Common.Encrypt("PositionCode", Session.SessionID);
			SortByPositionName.NavigateUrl = "Default.aspx" + stParam + "&sortfield=" + Common.Encrypt("PositionName", Session.SessionID);
		}
		private void LoadList()
		{	
			Positions clsPosition = new Positions();
			DataClass clsDataClass = new DataClass();

			string SortField = "PositionID";
			if (Request.QueryString["sortfield"]!=null)
			{	SortField = Common.Decrypt(Request.QueryString["sortfield"].ToString(), Session.SessionID);	}
			
			SortOption sortoption = SortOption.Ascending;
			if (Request.QueryString["sortoption"]!=null)
			{	sortoption = (SortOption) Enum.Parse(typeof(SortOption), Common.Decrypt(Request.QueryString["sortoption"], Session.SessionID), true);	}

			if (Request.QueryString["Search"]==null)
			{	PageData.DataSource = clsDataClass.DataReaderToDataTable(clsPosition.List(SortField, sortoption, 0)).DefaultView;	}
			else
			{						
				string SearchKey = Common.Decrypt((string)Request.QueryString["search"],Session.SessionID);
				PageData.DataSource = clsDataClass.DataReaderToDataTable(clsPosition.Search(SearchKey, SortField, sortoption, 0)).DefaultView;
			}

			clsPosition.CommitAndDispose();

			int iPageSize = Convert.ToInt16(Session["PageSize"]) ;
			
			PageData.AllowPaging = true;
			PageData.PageSize = iPageSize;
			try
			{
				PageData.CurrentPageIndex = Convert.ToInt16(cboCurrentPage.SelectedItem.Value) - 1;				
				lstItem.DataSource = PageData;
				lstItem.DataBind();
			}
			catch
			{
				PageData.CurrentPageIndex = 1;
				lstItem.DataSource = PageData;
				lstItem.DataBind();
			}			
			
			cboCurrentPage.Items.Clear();
			for (int i=0; i < PageData.PageCount;i++)
			{
				int iValue = i + 1;
				cboCurrentPage.Items.Add(new ListItem(iValue.ToString(),iValue.ToString()));
				if (PageData.CurrentPageIndex == i)
				{	cboCurrentPage.Items[i].Selected = true;}
				else
				{	cboCurrentPage.Items[i].Selected = false;}
			}
			lblDataCount.Text = " of " + " " + PageData.PageCount;
		}
		private bool Delete()
		{
			bool boRetValue = false;
			string stIDs = "";

			foreach(DataListItem item in lstItem.Items)
			{
				HtmlInputCheckBox chkList = (HtmlInputCheckBox) item.FindControl("chkList");
				if (chkList!=null)
				{
					if (chkList.Checked == true)
					{
						stIDs += chkList.Value + ",";		
						boRetValue = true;
					}
				}
			}
			if (boRetValue)
			{
				Positions clsPosition = new Positions();
				clsPosition.Delete( stIDs.Substring(0,stIDs.Length-1));
				clsPosition.CommitAndDispose();
			}

			return boRetValue;
		}
		private void Update()
		{
			if (isChkListSingle() == true)
			{
				string stID = GetFirstID();
				if (stID!=null)
				{
					string stParam = "?task=" + Common.Encrypt("edit",Session.SessionID) + "&id=" + Common.Encrypt(stID,Session.SessionID);	
					Response.Redirect("Default.aspx" + stParam);
				}
			}
			else
			{
				string stScript = "<Script>";
				stScript += "window.alert('Cannot update more than one record. Please select at least one record to update.')";
				stScript += "</Script>";
				Response.Write(stScript);	
			}
		}
		private string GetFirstID()
		{
			foreach(DataListItem item in lstItem.Items)
			{
				HtmlInputCheckBox chkList = (HtmlInputCheckBox) item.FindControl("chkList");
				if (chkList!=null)
				{
					if (chkList.Checked == true)
					{
						return chkList.Value;
					}
				}
			}
			return null;
		}
		private bool isChkListSingle()
		{
			bool boChkListSingle = true;
			int iCount = 0;
			
			foreach(DataListItem item in lstItem.Items)
			{
				HtmlInputCheckBox chkList = (HtmlInputCheckBox) item.FindControl("chkList");
				if (chkList!=null)
				{
					if (chkList.Checked == true)
					{
						iCount += 1;
						if (iCount >= 2)
						{	return false;	}
					}
				}
			}
			return boChkListSingle;
		}

		#endregion

    }
}
