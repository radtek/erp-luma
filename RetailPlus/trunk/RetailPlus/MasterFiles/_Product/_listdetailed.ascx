<%@ Control Language="c#" Inherits="AceSoft.RetailPlus.MasterFiles._Product.__ListDetailed" Codebehind="_listdetailed.ascx.cs" %>
<%@ Register TagPrefix="CTRL" TagName="ctrlEasyInsertVariation" Src="_easyinsertvariation.ascx" %>
<script language="JavaScript" src="../../_Scripts/sExpCollapse.js"></script>
<script language="JavaScript" src="../../_Scripts/SelectAll.js"></script>
<script language="JavaScript" src="../../_Scripts/ConfirmDelete.js"></script>
<script language="JavaScript" src="../../_Scripts/DocumentScripts.js"></script>
<script type="text/javascript" language="javascript">
    var ModalProgress = '<%= "Supress" %>';         
</script> 
<table cellspacing="0" cellpadding="0" width="100%" border="0">
	<tr>
		<td colspan="3"><img alt="" height="10" src="../../_layouts/images/blank.gif" width="1"/></td>
	</tr>
	<tr>
		<td><img alt="" height="1" src="../../_layouts/images/blank.gif" width="10"/></td>
		<td>
			<table class="ms-toolbar" style="margin-left: 0px" cellpadding="2" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgAdd" ToolTip="Add New Product" accessKey="N" tabIndex="1" CssClass="ms-toolbar" runat="server" ImageUrl="../../_layouts/images/newuser.gif" border="0" width="16" height="16" OnClick="imgAdd_Click" CausesValidation=false></asp:imagebutton>&nbsp;
								</td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdAdd" ToolTip="Add New Product" accessKey="N" tabIndex="2" CssClass="ms-toolbar" runat="server" onclick="cmdAdd_Click" CausesValidation=false>Add Product</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-separator"><asp:label id="lblSeparator1" runat="server">|</asp:label></td>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgDelete" ToolTip="Remove Selected Product" accessKey="X" tabIndex="3" CssClass="ms-toolbar" runat="server" ImageUrl="../../_layouts/images/delitem.gif" border="0" width="16" height="16" OnClick="imgDelete_Click" CausesValidation=false></asp:imagebutton></td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdDelete" ToolTip="Remove Selected Product" accessKey="X" tabIndex="4" CssClass="ms-toolbar" runat="server" onclick="cmdDelete_Click" CausesValidation=false>Remove Selected Product</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-separator"><asp:label id="lblSeparator2" runat="server">|</asp:label></td>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="idEdit" ToolTip="Edit Selected Product" accessKey="E" tabIndex="5" CssClass="ms-toolbar" runat="server" ImageUrl="../../_layouts/images/edit.gif" border="0" width="16" height="16" OnClick="idEdit_Click" CausesValidation=false></asp:imagebutton></td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdEdit" ToolTip="Edit Selected Product" accessKey="E" tabIndex="6" CssClass="ms-toolbar" runat="server" onclick="cmdEdit_Click" CausesValidation=false>Edit Selected Product</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-separator"><asp:label id="lblSeparator3" runat="server">|</asp:label></td>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="idCompose" title="Compose Selected Product" accessKey="C" tabIndex="5" CssClass="ms-toolbar" runat="server" ImageUrl="../../_layouts/images/edit.gif" ToolTip="Compose Selected Product" border="0" width="16" height="16" OnClick="idCompose_Click" CausesValidation="False"></asp:imagebutton></td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdCompose" title="Compose Selected Product" accessKey="C" tabIndex="6" CssClass="ms-toolbar" runat="server" onclick="cmdCompose_Click" CausesValidation="False">Compose Selected Product</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-separator"><asp:label id="lblSeparator4" runat="server">|</asp:label></td>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="idFinance" title="Setup Financial Information" accessKey="C" tabIndex="5" CssClass="ms-toolbar" runat="server" ImageUrl="../../_layouts/images/tabfinance.gif" ToolTip="Setup Financial Information" border="0" width="16" height="16" OnClick="idFinance_Click" CausesValidation=false></asp:imagebutton></td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdFinance" title="Setup Financial Information" accessKey="C" tabIndex="6" CssClass="ms-toolbar" runat="server" OnClick="cmdFinance_Click" CausesValidation=false>Setup Financial Info</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-toolbar" id="align01" nowrap="nowrap" align="right" width="99%">
						<table cellspacing="0" cellpadding="0" width="100%" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap" align="right"><asp:label id="lblDataCount1" CssClass="Normal" runat="server"> Go to page </asp:label><asp:dropdownlist id="cboCurrentPage" runat="server" AutoPostBack="True" onselectedindexchanged="cboCurrentPage_SelectedIndexChanged">
										<asp:ListItem Value="1" Selected="True">1</asp:ListItem>
									</asp:dropdownlist><asp:label id="lblDataCount" CssClass="class=ms-vb-user" runat="server"> of 0</asp:label></td>
							</tr>
						</table>
					</td>
					<td class="ms-toolbar" id="align02" nowrap="nowrap" align="right"><img height="1" src="../../_layouts/images/blank.gif" width="1">
					</td>
				</tr>
			</table>
		</td>
		<td><img alt="" height="1" src="../../_layouts/images/blank.gif" width="10"/></td>
	</tr>
    <tr>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
		<td class="ms-authoringcontrols">
		    <table class="ms-authoringcontrols" style="MARGIN-BOTTOM: 5px" cellspacing="0" cellpadding="0" border="0" width="100%">
				<tr>
					<td style="padding-bottom:2px" nowrap="nowrap" colspan="6">
						<asp:RadioButton ID="rdoShowAll" GroupName="FilterProductList" runat="server" Text="Show both active and inactive products "/>
                        <asp:RadioButton ID="rdoShowActiveOnly" GroupName="FilterProductList" runat="server" Text="Show active products only " Checked="True"/>
                        <asp:RadioButton ID="rdoShowInactiveOnly" GroupName="FilterProductList" runat="server" Text="Show inactive products only "/>&nbsp;
					</td>
                    <td nowrap="nowrap">
						<asp:TextBox id="txtLimit" onkeypress="AllNum()" runat="server" CssClass="ms-short-numeric" Width="50" MaxLength="5" BorderStyle="Groove">100</asp:TextBox>-Show Item(0=All Items)
					</td>
					<td width="99%" id="align05" nowrap="nowrap" align="left">&nbsp;
					</td>
				</tr>
                <tr>
					<td style="padding-bottom:2px" nowrap="nowrap">
						&nbsp;<label>Suplier Name From</label>&nbsp;
					</td>
					<td class="ms-separator">&nbsp;&nbsp;&nbsp;</td>
					<td nowrap="nowrap">
						<asp:TextBox id="txtSupplierNameFrom" accessKey="S" CssClass="ms-short" runat="server" MaxLength="30" BorderStyle="Groove"></asp:TextBox>
					</td>
					<td class="ms-separator">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
					<td style="padding-bottom:2px" nowrap="nowrap">
						<label>Suplier Name To</label>
					</td>
					<td class="ms-separator">&nbsp;&nbsp;&nbsp;</td>
					<td nowrap="nowrap">
						<asp:TextBox id="txtSupplierNameTo" accessKey="S" CssClass="ms-short" runat="server" MaxLength="30" BorderStyle="Groove"></asp:TextBox>
					</td>
					<td width="99%" id="Td4" nowrap="nowrap" align="left">&nbsp;
					</td>
				</tr>
				<tr>
					<td style="padding-bottom:2px" nowrap="nowrap">
						&nbsp;<label>P. Group Name From</label>&nbsp;
					</td>
					<td class="ms-separator">&nbsp;&nbsp;&nbsp;</td>
					<td nowrap="nowrap">
						<asp:TextBox id="txtProductGroupnameFrom" accessKey="S" CssClass="ms-short" runat="server" MaxLength="30" BorderStyle="Groove"></asp:TextBox>
					</td>
					<td class="ms-separator">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
					<td style="padding-bottom:2px" nowrap="nowrap">
						<label>P. Group Name To</label>
					</td>
					<td class="ms-separator">&nbsp;&nbsp;&nbsp;</td>
					<td nowrap="nowrap">
						<asp:TextBox id="txtProductGroupNameTo" accessKey="S" CssClass="ms-short" runat="server" MaxLength="30" BorderStyle="Groove"></asp:TextBox>
					</td>
					<td width="99%" id="Td1" nowrap="nowrap" align="left">&nbsp;
					</td>
				</tr>
                <tr>
					<td style="padding-bottom:2px" nowrap="nowrap">
						&nbsp;<label>SubGroup Name From</label>&nbsp;
					</td>
					<td class="ms-separator">&nbsp;&nbsp;&nbsp;</td>
					<td nowrap="nowrap">
						<asp:TextBox id="txtProductSubGroupNameFrom" accessKey="S" CssClass="ms-short" runat="server" MaxLength="30" BorderStyle="Groove"></asp:TextBox>
					</td>
					<td class="ms-separator">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
					<td style="padding-bottom:2px" nowrap="nowrap">
						<label>SubGroup Name To</label>
					</td>
					<td class="ms-separator">&nbsp;&nbsp;&nbsp;</td>
					<td nowrap="nowrap">
						<asp:TextBox id="txtProductSubGroupNameTo" accessKey="S" CssClass="ms-short" runat="server" MaxLength="30" BorderStyle="Groove"></asp:TextBox>
					</td>
					<td width="99%" id="Td3" nowrap="nowrap" align="left">&nbsp;
					</td>
				</tr>
                <tr>
					<td style="padding-bottom:2px" nowrap="nowrap">
						&nbsp;<label>Barcode From</label>&nbsp;
					</td>
					<td class="ms-separator">&nbsp;&nbsp;&nbsp;</td>
					<td nowrap="nowrap">
						<asp:TextBox id="txtBarcodeFrom" accessKey="S" CssClass="ms-short" runat="server" MaxLength="30" BorderStyle="Groove"></asp:TextBox>
					</td>
					<td class="ms-separator">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
					<td style="padding-bottom:2px" nowrap="nowrap">
						<label>Barcode To</label>
					</td>
					<td class="ms-separator">&nbsp;&nbsp;&nbsp;</td>
					<td nowrap="nowrap">
						<asp:TextBox id="txtBarcodeTo" accessKey="E" CssClass="ms-short" runat="server" BorderStyle="Groove" MaxLength="30"></asp:TextBox>
                    </td>
					<td width="99%" id="Td5" nowrap="nowrap" align="left">&nbsp;
					</td>
				</tr>
                <tr>
					<td style="padding-bottom:2px" nowrap="nowrap">
						&nbsp;<label>Product Code From</label>&nbsp;
					</td>
					<td class="ms-separator">&nbsp;&nbsp;&nbsp;</td>
					<td nowrap="nowrap">
						<asp:TextBox id="txtProductCodeFrom" accessKey="S" CssClass="ms-short" runat="server" MaxLength="30" BorderStyle="Groove"></asp:TextBox>
					</td>
					<td class="ms-separator">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
					<td style="padding-bottom:2px" nowrap="nowrap">
						<label>Product Code To</label>
					</td>
					<td class="ms-separator">&nbsp;&nbsp;&nbsp;</td>
					<td nowrap="nowrap">
						<asp:TextBox id="txtProductCodeTo" accessKey="E" CssClass="ms-short" runat="server" BorderStyle="Groove" MaxLength="30"></asp:TextBox>
					</td>
					<td width="99%" id="Td2" nowrap="nowrap" align="left">&nbsp;
                        <asp:ImageButton accessKey="s" style="CURSOR: hand" id="cmdSearch" ImageUrl="../../_layouts/images/icongo01.gif" border="0" ToolTip="Execute search" runat="server" causesvalidation="false" onclick="cmdSearch_Click"></asp:ImageButton>
					</td>
				</tr>
                
			</table>
		</td>
	</tr>
	<tr>
	    <td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
		<td class="ms-sectionline" height="2" style="MARGIN-BOTTOM: 5px"><img alt="" src="../../_layouts/images/empty.gif" /></td>
		<td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
	</tr>
	<tr>
		<td><img alt="" height="1" src="../../_layouts/images/blank.gif" width="10"/></td>
		<td>
			<table cellspacing="0" cellpadding="0" width="100%" border="0">
				<colgroup>
					<col width="1"/>
					<col width="25%"/>
					<col width="25%"/>
					<col width="50%"/>
				</colgroup>
				<tr>
					<th class="ms-vh2">
						<img alt="" height="10" src="../../_layouts/images/blank.gif" width="1"/></th>
					<th class="ms-vh2">
						<img alt="" height="5" src="../../_layouts/images/blank.gif" width="1"/></th>
					<th class="ms-vh2">
						<img alt="" height="5" src="../../_layouts/images/blank.gif" width="1"/></th>
					<th class="ms-vh2">
						<img alt="" height="5" src="../../_layouts/images/blank.gif" width="1"/></th>
                </tr>
				<tr>
					<td class="ms-vb2" style="PADDING-RIGHT: 15px; BORDER-TOP: 0px; padding-bottom: 0px; PADDING-TOP: 0px"><input id="idSelectAll" onclick="SelectAll();" type="checkbox" name="selectall" />
					</td>
					<td class="ms-vb2" style="BORDER-TOP: 0px"><label for="idSelectAll"><b>Select All</b></label></td>
					<td class="ms-vb2" style="BORDER-TOP: 0px" colspan="2"><img height="1" alt="" src="../../_layouts/images/blank.gif" width="1" /></td>
				</tr>
				<tr>
					<td colspan="4" height="5"><img alt="" height="1" src="../../_layouts/images/blank.gif" width="10"/></td>
				</tr>
			</table>
			<%--<asp:UpdatePanel ID="UpdatePanel3" runat="server" >
			    <ContentTemplate >--%>
			        <asp:datalist id="lstItem" runat="server" Width="100%" ShowFooter="False" CellPadding="0" OnItemCommand="lstItem_ItemCommand" OnItemDataBound="lstItem_ItemDataBound" AlternatingItemStyle-CssClass="ms-alternating">
				        <HeaderTemplate>
					        <table width="100%" cellpadding="0" cellspacing="0" border="0" id="tblHeaderTemplate">
						        <colgroup>
							        <col width="10">
							        <col width="1">
							        <col width="1">
							        <col width="1">
							        <col width="1">
							        <col width="22%">
							        <col width="20%">
							        <col width="24%">
							        <col width="22%">
							        <col width="12%">
							        <col width="1">
						        </colgroup>
						        <tr>
							        <TH class="ms-vh2" style="padding-bottom: 4px">
							        </TH>
							        <TH class="ms-vh2" style="padding-bottom: 4px">
								        &nbsp;&nbsp;&nbsp;&nbsp;</TH>
							        <TH class="ms-vh2" style="padding-bottom: 4px">
								        &nbsp;&nbsp;&nbsp;&nbsp;</TH>
							        <TH class="ms-vh2" style="padding-bottom: 4px">
								        &nbsp;&nbsp;&nbsp;&nbsp;</TH>
							        <TH class="ms-vh2" style="padding-bottom: 4px">
								        &nbsp;&nbsp;&nbsp;&nbsp;</TH>
							        <TH class="ms-vh2" style="padding-bottom: 4px">
								        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								        <asp:hyperlink id="SortByProductCode" runat="server">Product Code</asp:hyperlink></TH>
							        <TH class="ms-vh2" style="padding-bottom: 4px">
								        <asp:hyperlink id="SortByBarCode" runat="server">Bar Code</asp:hyperlink></TH>
							        <TH class="ms-vh2" style="padding-bottom: 4px">
								        <asp:hyperlink id="SortByDescription" runat="server">Description</asp:hyperlink></TH>
							        <TH class="ms-vh2" style="padding-bottom: 4px">
								        &nbsp;&nbsp;
								        <asp:hyperlink id="SortByGroupName" runat="server">Product Group</asp:hyperlink></TH>
							        <TH class="ms-vh2" style="padding-bottom: 4px">
								        &nbsp;&nbsp;&nbsp;&nbsp;
								        <asp:hyperlink id="SortByUnit" runat="server">Unit</asp:hyperlink></TH>
							        <TH class="ms-vh2" style="padding-bottom: 4px">
							        </TH>
						        </tr>
					        </table>
				        </HeaderTemplate>
				        <ItemTemplate>
					        <table id="tblItemTemplate" cellspacing="0" cellpadding="0" width="100%" border="0" onmouseover="this.bgColor='#FFE303'" onmouseout="this.bgColor='transparent'">
						        <colgroup>
							        <col width="10">
							        <col width="1">
							        <col width="1">
							        <col width="1">
							        <col width="1">
							        <col width="22%">
							        <col width="20%">
							        <col width="26%">
							        <col width="22%">
							        <col width="10%">
							        <col width="1">
						        </colgroup>
						        <tr>
							        <td class="ms-vb-user">
								        <input id="chkList" type="checkbox" name="chkList" runat="server" /></td>
							        <td class="ms-vb2">
							            <asp:ImageButton id="imgVariations" runat="server" ImageUrl="../../_layouts/images/variations.gif" ToolTip="Show Variation Types" CommandName="imgVariationsClick" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton></td>
							        <td class="ms-vb2">
							            <asp:ImageButton id="imgVariationsMatrix" runat="server" ImageUrl="../../_layouts/images/varmatrix.gif" ToolTip="Show Variations Matrix" CommandName="imgVariationsMatrixClick" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton></td>
							        <td class="ms-vb2">
							            <asp:ImageButton id="imgUnitsMatrix" runat="server" ImageUrl="../../_layouts/images/unitmatrix.gif" ToolTip="Show Units Matrix" CommandName="imgUnitsMatrixClick" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton></td>
							        <td class="ms-vb2">
							            <asp:HyperLink ID="lnkPackage" runat="server" ToolTip="Setup Product Packages" Font-Underline="true" Target="_blank">&nbsp;p&nbsp;</asp:HyperLink></td>
							        <td class="ms-vb-user">&nbsp;
								        <asp:HyperLink id="lnkProductCode" Runat="server"></asp:HyperLink>
							        <td class="ms-vb-user">
								        <asp:HyperLink id="lnkBarCode" Runat="server"></asp:HyperLink>
							        <td class="ms-vb-user">
								        <asp:HyperLink id="lnkDescription" Runat="server"></asp:HyperLink></td>
							        <td class="ms-vb2">
								        <asp:HyperLink id="lnkGroup" Runat="server"></asp:HyperLink></td>
							        <td class="ms-vb2">
								        <asp:HyperLink id="lnkUnit" Runat="server"></asp:HyperLink></td>
							        <td class="ms-vb2"><a class="DropDown" id="a1" href="" runat="server" visible="false">
									        <asp:Image id="Image1" ImageUrl="../../_layouts/images/DLMAX.gif" runat="server" ToolTip="Show"></asp:Image></a>
							        </td>
						        </tr>
						        <tr>
							        <td class="ms-vh2" height="1">
							            <asp:ImageButton id="imgProductTag" runat="server" ImageUrl="../../_layouts/images/prodtagact.gif" ToolTip="Tag as inactive" CommandName="imgProductTag" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton>
							        </td>
							        <td class="ms-vb2">
							            <A class="DropDown" id="imgVariationsAdd" href="" runat="server" target="_blank">
							                <asp:Label runat="server" ToolTip="Add new Product Variation Type" Text="+"></asp:Label></A>
							        </td>
							        <td class="ms-vb2">
								        <asp:ImageButton id="imgVariationsMatrixAdd" runat="server" ImageUrl="../../_layouts/images/newuser.gif" ToolTip="Add new Product Variations Matrix" CommandName="imgVariationsMatrixAddClick" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton></td>
							        <td class="ms-vb2">
								        <asp:ImageButton id="imgUnitsMatrixAdd" runat="server" ImageUrl="../../_layouts/images/newuser.gif" ToolTip="Add new Product Units Matrix" CommandName="imgUnitsMatrixAddClick" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton></td>
							        <td class="ms-vb2">
								        <asp:ImageButton id="imgPackageAdd" runat="server" ImageUrl="../../_layouts/images/newuser.gif" ToolTip="Add new Product Package Matrix" CommandName="imgPackageMatrixAddClick" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton></td>
							        <td class="ms-vb2">
								        <asp:Label id="Label6" runat="server" text="Buying"></asp:Label>
								        <asp:Label id="Label8" runat="server" text="<b>:</b>"></asp:Label>
								        <asp:Label id="lblPurchasePrice" runat="server"></asp:Label>
							        </td>
							        <td class="ms-vb2">
								        <asp:Label id="Label1" runat="server" text="Selling"></asp:Label>
								        <asp:Label id="Label3" runat="server" text="<b>:</b>"></asp:Label>
								        <asp:Label ID="lblPrice" Runat="server"></asp:Label>
							        </td>
							        <td class="ms-vb2">
								        <asp:Label id="Label211" runat="server" text="Margin"></asp:Label>
								        <asp:Label id="Label181" runat="server" text="<b>:</b>"></asp:Label>
								        <asp:Label id="lblMargin" runat="server"></asp:Label></td>
							        <td class="ms-vb2">
								        <asp:Label id="Label411" runat="server" text="SubGroup"></asp:Label>
								        <asp:Label id="Label91" runat="server" text="<b>:</b>"></asp:Label>
								        <asp:Label id="lnkSubGroup" Runat="server"></asp:Label>
							        </td>
							        <td class="ms-vb2">
							            <asp:Label id="Label51" runat="server" text="Qty"></asp:Label>
								        <asp:Label id="Label1111" runat="server" text="<b>:</b>"></asp:Label>
								        <asp:Label id="lblQuantity" runat="server"></asp:Label>	
							        </td>
							        <td class="ms-vb2"><A class="DropDown" id="anchorDown" href="" runat="server">
									        <asp:Image id="divExpCollAsst_img" ImageUrl="../../_layouts/images/DLMAX.gif" runat="server" ToolTip="Show"></asp:Image></A>
							        </td>
						        </tr>
						        <tr>
							        <td class="ms-vb2">
							            <asp:ImageButton id="imgProductHistory" runat="server" ImageUrl="../../_layouts/images/prodhist.gif" ToolTip="Show product inventory history report" CommandName="imgProductHistoryClick" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton></td>
							        <td class="ms-vb2">
								        <asp:ImageButton id="imgProductPriceHistory" runat="server" ImageUrl="../../_layouts/images/pricehist.gif" ToolTip="Show product price history report" CommandName="imgProductPriceHistoryClick" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton></td>
							        <td class="ms-vb2">
								        <asp:ImageButton id="imgInventoryAdjustment" runat="server" ImageUrl="../../_layouts/images/invadj.gif" ToolTip="Adjust inventory count" CommandName="imgInventoryAdjustmentClick" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton></td>
							        <td class="ms-vb2">
								        <asp:ImageButton id="imgChangePrice" runat="server" ImageUrl="../../_layouts/images/chprice.gif" ToolTip="Change price" CommandName="imgChangePriceClick" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton></td>
							        <td class="ms-vb2">
								        <asp:ImageButton id="imgEditNow" runat="server" ImageUrl="../../_layouts/images/edit.gif" ToolTip="Edit this product" CommandName="imgEditNowClick" CausesValidation="false" OnClientClick="NewWindow();"></asp:ImageButton></td>
							        <td class="ms-vb2">
								        <asp:Label id="Label61" runat="server" text="Supplier"></asp:Label>
								        <asp:Label id="Label81" runat="server" text="<b>:</b>"></asp:Label>
								        <asp:HyperLink id="lnkSupplierName" runat="server"></asp:HyperLink>
							        </td>
							        <td class="ms-vb2">
								        <asp:CheckBox id="chkIncludeInSubtotalDiscount" runat="server" Checked="True" Text="[included in subtotal disc]" Enabled=false></asp:CheckBox>
							        </td>
							        <td class="ms-vb2">
								        <asp:Label id="Label2" runat="server" text="VAT"></asp:Label>
								        <asp:Label id="Label18" runat="server" text="<b>:</b>"></asp:Label>
								        <asp:Label id="lblVAT" runat="server"></asp:Label></td>
							        <td class="ms-vb2">
								        <asp:Label id="Label4" runat="server" text="eVAT"></asp:Label>
								        <asp:Label id="Label9" runat="server" text="<b>:</b>"></asp:Label>
								        <asp:Label id="lblEVAT" runat="server"></asp:Label>
							        </td>
							        <td class="ms-vb2">
							            <asp:Label id="Label5" runat="server" text="L Tax"></asp:Label>
								        <asp:Label id="Label11" runat="server" text="<b>:</b>"></asp:Label>
								        <asp:Label id="lblLocalTax" runat="server"></asp:Label>	
							        </td>
							        <td class="ms-vb2"><A class="DropDown" id="anchorDown1" href="" runat="server" visible=false>
									        <asp:Image id="divExpCollAsst_img1" ImageUrl="../../_layouts/images/DLMAX.gif" runat="server" ToolTip="Show"></asp:Image></A>
							        </td>
						        </tr>
						        <tr>
							        <td class="ms-vh2" height="1"><img src="../../_layouts/images/blank.gif" width="1"></td>
							        <td colspan="9" height="1">
								        <DIV class="ACECollapsed" id="divInsertVariation" runat="server" border="0">
									        <asp:panel id="panCard" runat="server" Width="100%" Height="100%" CssClass="ms-authoringcontrols">
										        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                                    <tr>
                                                        <td colspan="3" class="ms-sectionline" height="2"><img alt="" src="../../_layouts/images/empty.gif" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3"><img height="10" alt="" src="../../_layouts/images/blank.gif" width="1"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
                                                        <td>
                                                            <table class="ms-toolbar" style="margin-left: 0px" cellpadding="2" cellspacing="0" border="0" width="100%">
	                                                            <tr>
		                                                            <td class="ms-toolbar">
			                                                            <table cellspacing="0" cellpadding="1" border="0">
				                                                            <tr>
					                                                            <td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgSaveVariation" ToolTip="Add New Product Variation" accessKey="S" tabIndex="1" height="16" width="16" border="0" alt="Add New Product Variation" ImageUrl="../../_layouts/images/saveitem.gif" runat="server" CssClass="ms-toolbar" CommandName="imgSaveVariationClick" CausesValidation=false></asp:imagebutton>&nbsp;
					                                                            </td>
					                                                            <td nowrap="nowrap"><asp:linkbutton id="cmdSaveVariation" ToolTip="Add New Product Variation" accessKey="S" tabIndex="2" runat="server" CssClass="ms-toolbar" CommandName="cmdSaveVariationClick" CausesValidation=false>Save Variation</asp:linkbutton></td>
				                                                            </tr>
			                                                            </table>
		                                                            </td>
		                                                            <td class="ms-separator">|</td>
		                                                            <td class="ms-toolbar">
			                                                            <table cellspacing="0" cellpadding="1" border="0">
				                                                            <tr>
					                                                            <td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgCancelVariation" title="Cancel Adding New Product Variation" accessKey="C" tabIndex="3" height="16" width="16" border="0" alt="Cancel Adding New Product Variation" ImageUrl="../../_layouts/images/impitem.gif" runat="server" CssClass="ms-toolbar" CausesValidation="False"></asp:imagebutton></td>
					                                                            <td nowrap="nowrap"><asp:linkbutton id="cmdCancelVariation" title="Cancel Adding New Product Variation" accessKey="C" tabIndex="4" runat="server" CssClass="ms-toolbar" CausesValidation="False">Cancel</asp:linkbutton></td>
				                                                            </tr>
			                                                            </table>
		                                                            </td>
		                                                            <td width="99%" class="ms-toolbar" id="align02" nowrap="nowrap" align="right"><img height="1" alt="" src="../../_layouts/images/blank.gif" width="1" />
		                                                            </td>
	                                                            </tr>
                                                            </table>
                                                        </td>
                                                        <td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td><img height="1" alt="" src="../../_layouts/images/blank.gif" width="10" /></td>
                                                        <td>
                                                            <table cellpadding="0" cellspacing="0" border="0" width="100%">
	                                                            <tr>
		                                                            <td colspan="3" class="ms-descriptiontext" style="padding-bottom: 10px; PADDING-TOP: 8px; height: 37px;">
			                                                            <font color="red">*</font> Indicates a required field
		                                                            </td>
	                                                            </tr>
	                                                            <tr>
		                                                            <td colspan="3" class="ms-sectionline" height="1">
			                                                            <A name="InputFormSection1"></A><img alt="" src="../../_layouts/images/empty.gif" /></td>
	                                                            </tr>
	                                                            <tr>
		                                                            <td valign="top" style="padding-bottom: 20px">
			                                                            <div class="ms-sectionheader" style="padding-bottom: 8px">Step 1:&nbsp;General 
				                                                            Information</div>
			                                                            <div class="ms-descriptiontext" style="padding-bottom:	10px">
				                                                            Select&nbsp; variation type.</div>
		                                                            </td>
		                                                            <td class="ms-colspace">&nbsp;</td>
		                                                            <td class="ms-authoringcontrols ms-formwidth" valign="top" style="PADDING-RIGHT:	10px; BORDER-TOP:	white 1px solid; PADDING-LEFT:	8px; padding-bottom:	20px">
			                                                            <table class="ms-authoringcontrols" style="MARGIN-BOTTOM: 5px" cellspacing="0" cellpadding="0" border="0" width="100%">
				                                                            <tr>
					                                                            <td class="ms-authoringcontrols" style="padding-bottom:2px" colspan="2">
						                                                            <label>Variation Type<font color="red">*</font></label>
					                                                            </td>
				                                                            </tr>
				                                                            <tr>
					                                                            <td class="ms-formspacer"><img alt="" src="../../_layouts/images/trans.gif" width="10"></td>
					                                                            <td class="ms-authoringcontrols" width="100%">
						                                                            <asp:dropdownlist id="cboVariationType" CssClass="ms-long" runat="server" Width="157px"></asp:dropdownlist>
					                                                            </td>
				                                                            </tr>
				                                                            <tr>
					                                                            <td class="ms-formspacer"></td>
				                                                            </tr>
			                                                            </table>
		                                                            </td>
	                                                            </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3"><img height="10" alt="" src="../../_layouts/images/blank.gif" width="1"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" class="ms-sectionline" height="2"><img alt="" src="../../_layouts/images/empty.gif" /></td>
                                                    </tr>
                                                </table>
									        </asp:panel>
									     </DIV>
							        </td>
							        <td class="ms-vh2" height="1"><img alt="" height="5" src="../../_layouts/images/blank.gif" width="1"/></td>
						        </tr>
						        <tr>
							        <td class="ms-vh2" height="1"><img alt="" height="5" src="../../_layouts/images/blank.gif" width="1"/></td>
							        <td colspan="9" height="1">
								        <DIV class="ACECollapsed" id="div1" runat="server" border="0">
									        <asp:panel id="Panel1" runat="server" Width="100%" Height="100%" CssClass="ms-authoringcontrols">
										        <table id="TABLE1" cellspacing="0" cellpadding="0" width="100%" border="0">
											        <tr>
												        <td class="ms-formspacer" colspan="1">
												            <CTRL:ctrlEasyInsertVariation id="ctrlEasyInsertVariation" runat="server"></CTRL:ctrlEasyInsertVariation>
												        </td>
											        </tr>
        											
										        </table>
									        </asp:panel></DIV>
							        </td>
							        <td class="ms-vh2" height="1"><img alt="" height="5" src="../../_layouts/images/blank.gif" width="1"/></td>
						        </tr>
					        </table>
				        </ItemTemplate>
			        </asp:datalist>
			    <%--</ContentTemplate>
			    <Triggers> 
			        <asp:AsyncPostBackTrigger ControlID="imgDelete" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="cmdDelete" EventName="Click" />
                </Triggers>
			</asp:UpdatePanel>--%>
			</td>
		<td><img alt="" height="1" src="../../_layouts/images/blank.gif" width="10"/></td>
	</tr>
	<tr>
		<td colspan="3">
		    <img alt="" height="10" src="../../_layouts/images/blank.gif" width="1"/>
		    <asp:Label id="lblVariationsAccess" runat="server" Visible=false text="0" />
		    <asp:Label id="lblUnitMatrixAccess" runat="server" Visible=false text="0" />
		    <asp:Label id="lblProductPackageAccess" runat="server" Visible=false text="0" />
		    <asp:Label id="lblInvAdjustmentAccess" runat="server" Visible=false text="0" />
		    <asp:Label id="lblProductsListReportAccess" runat="server" Visible=false text="0" />
		    <asp:Label id="lblPricesReportAccess" runat="server" Visible=false text="0" />
		    <asp:Label id="lblChangePriceAccess" runat="server" Visible=false text="0" />
		</td>
	</tr>
</table>
