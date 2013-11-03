using System;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using AceSoft.RetailPlus.Data;

namespace AceSoft.RetailPlus.MasterFiles._Product
{
    public partial class __AddProductVariation : System.Web.UI.UserControl
	{

		#region Web Form Methods

		protected void Page_Load(object sender, System.EventArgs e)
		{
            if (!IsPostBack && Visible)
			{
				lblReferrer.Text = Request.UrlReferrer == null ? Constants.ROOT_DIRECTORY : Request.UrlReferrer.ToString();
			    LoadOptions();			
			}
		}

		
		#endregion

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion

		#region Web Control Methods

        protected void imgCancel_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Response.Redirect(lblReferrer.Text);
		}
        protected void cmdCancel_Click(object sender, System.EventArgs e)
		{
			Response.Redirect(lblReferrer.Text);
		}
        protected void cmdProductGroup_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            LoadProductGroup();
            cboProductGroup_SelectedIndexChanged(null, null);
        }
        protected void cboProductGroup_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            LoadSubGroup();
        }
        protected void cmdProductSubGroup_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            LoadSubGroup();
            cboProductSubGroup_SelectedIndexChanged(null, null);
        }
        protected void cboProductSubGroup_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            LoadProduct();
        }
        protected void cmdProductCode_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            LoadProduct();
        }
        protected void cboProductCode_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            Products clsProduct = new Products();
            int intProductBaseUnitID = 0;
            decimal decCommision = 0;
            try {
                ProductDetails clsDetails = clsProduct.Details(Convert.ToInt64(cboProductCode.SelectedValue));
                intProductBaseUnitID = clsDetails.BaseUnitID; decCommision = clsDetails.PercentageCommision;
            }
            catch { }
            txtProductCode.ToolTip = intProductBaseUnitID.ToString();
            lblProductID.ToolTip = decCommision.ToString();

            clsProduct.CommitAndDispose();

        }
        protected void imgSave_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            SaveRecord(); 
        }
        protected void cmdSave_Click(object sender, EventArgs e)
        {
            SaveRecord(); 
        }

		#endregion

		#region Private Methods

		private void LoadOptions()
		{
            cboProductGroup.Items.Add(new ListItem(Constants.ALL, Constants.ZERO_STRING));
            cboProductGroup.SelectedIndex = 0;
            cboProductSubGroup.Items.Add(new ListItem(Constants.ALL, Constants.ZERO_STRING));
            cboProductSubGroup.SelectedIndex = 0;

            string strproductcode = string.Empty;
            try { strproductcode = Common.Decrypt(Request.QueryString["productcode"].ToString(), Session.SessionID); }
            catch { }

            if (strproductcode == string.Empty)
            {
                cboProductCode.Items.Clear();
                cboProductCode.Items.Add(new ListItem(Constants.ALL, Constants.ZERO_STRING));
                cboProductCode.SelectedIndex = 0;
            }
            else{
                txtProductCode.Text = strproductcode;
                cmdProductCode_Click(null, null);
            }

            lblProductGroupID.Text = Constants.ZERO_STRING;
            lblProductSubGroup.Text = Constants.ZERO_STRING;
            lblProductID.Text = Constants.ZERO_STRING;

            LoadVariation();
		}
        private void LoadProductGroup()
        {
            Data.ProductGroup clsProductGroup = new Data.ProductGroup();
            cboProductGroup.DataTextField = "ProductGroupName";
            cboProductGroup.DataValueField = "ProductGroupID";

            string stSearchKey = "%" + txtProductGroup.Text;
            cboProductGroup.DataSource = clsProductGroup.SearchDataTable(stSearchKey, "ProductGroupName", SortOption.Ascending, 100);
            cboProductGroup.DataBind();
            clsProductGroup.CommitAndDispose();

            if (cboProductGroup.Items.Count == 0) cboProductGroup.Items.Insert(0, new ListItem(Constants.ALL, Constants.ZERO_STRING));
            cboProductGroup.SelectedIndex = 0;
        }
        private void LoadSubGroup()
        {
            ProductSubGroupColumns clsProductSubGroupColumns = new ProductSubGroupColumns();
            clsProductSubGroupColumns.ProductSubGroupID = true;
            clsProductSubGroupColumns.ProductSubGroupName = true;

            ProductSubGroupDetails clsSearchKeys = new ProductSubGroupDetails();
            clsSearchKeys.ProductSubGroupCode = txtProductSubGroup.Text;
            clsSearchKeys.ProductGroupID = long.Parse(cboProductGroup.SelectedItem.Value);

            Data.ProductSubGroup clsProductSubGroup = new Data.ProductSubGroup();
            cboProductSubGroup.DataTextField = "ProductSubGroupName";
            cboProductSubGroup.DataValueField = "ProductSubGroupID";
            cboProductSubGroup.DataSource = clsProductSubGroup.ListAsDataTable(clsProductSubGroupColumns, clsSearchKeys, 0, System.Data.SqlClient.SortOrder.Ascending, 0, Data.ProductSubGroupColumnNames.ProductSubGroupName, System.Data.SqlClient.SortOrder.Ascending);
            cboProductSubGroup.DataBind();
            clsProductSubGroup.CommitAndDispose();

            if (cboProductSubGroup.Items.Count == 0) cboProductSubGroup.Items.Insert(0, new ListItem(Constants.ALL, Constants.ZERO_STRING));
            cboProductSubGroup.SelectedIndex = 0;
        }
        private void LoadProduct()
        {
            string strSearchKey = txtProductCode.Text.Trim();
            Data.ProductDetails clsSearchKeys = new Data.ProductDetails();
            clsSearchKeys.BarCode = strSearchKey;
            clsSearchKeys.BarCode2 = strSearchKey;
            clsSearchKeys.BarCode3 = strSearchKey;
            clsSearchKeys.ProductCode = strSearchKey;
            clsSearchKeys.ProductSubGroupID = long.Parse(cboProductSubGroup.SelectedItem.Value);
            clsSearchKeys.ProductGroupID = long.Parse(cboProductGroup.SelectedItem.Value);

            Data.Products clsProduct = new Data.Products();
            cboProductCode.DataTextField = "ProductCode";
            cboProductCode.DataValueField = "ProductID";
            cboProductCode.DataSource = clsProduct.ListAsDataTable(clsSearchKeys: clsSearchKeys, Limit: 100).DefaultView;
            cboProductCode.DataBind();
            clsProduct.CommitAndDispose();

            if (cboProductCode.Items.Count == 0) cboProductCode.Items.Insert(0, new ListItem(Constants.ALL, Constants.ZERO_STRING));
            cboProductCode.SelectedIndex = 0;
        }
        private void LoadVariation()
        {
            Variation clsVariation = new Variation();
            cboVariationType.DataTextField = "VariationType";
            cboVariationType.DataValueField = "VariationID";
            cboVariationType.DataSource = clsVariation.ListAsDataTable().DefaultView;
            cboVariationType.DataBind();
            cboVariationType.SelectedIndex = 0;

            clsVariation.CommitAndDispose();	
        }
		private void SaveRecord()
		{
            long lngProductGroupID = long.Parse(cboProductGroup.SelectedItem.Value);
            long lngProductSubGroupID = long.Parse(cboProductSubGroup.SelectedItem.Value);
            long lngProductID = long.Parse(cboProductCode.SelectedItem.Value);
            long lngVariationID = long.Parse(cboVariationType.SelectedItem.Value);
            string javaScript = "";

            if (lngVariationID == 0)
            {
                javaScript = "window.alert('Please select at least one variation to add.')";
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this.updSave, this.updSave.GetType(), "openwindow", javaScript, true);
            }
            else {
                ProductVariation clsProductVariation = new ProductVariation();
                clsProductVariation.AddEasyVariation(lngProductGroupID, lngProductSubGroupID, lngProductID, lngVariationID, Convert.ToString(Session["Name"]));
                clsProductVariation.CommitAndDispose();

                javaScript = "window.alert('Variation has been saved.')";
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this.updSave, this.updSave.GetType(), "openwindow", javaScript, true);
            }
		}

		#endregion
        
    }
}