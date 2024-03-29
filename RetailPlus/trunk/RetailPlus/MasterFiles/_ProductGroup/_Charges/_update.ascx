<%@ Reference Control="~/masterfiles/_product/_update.ascx" %>
<%@ Control Language="c#" Inherits="AceSoft.RetailPlus.MasterFiles._Product._Group._Charges.__Update" Codebehind="_Update.ascx.cs" %>
<table cellspacing="0" cellpadding="0" width="100%" border="0">
	<tr>
		<td colspan="3"><img height="10" alt="" src="../../../_layouts/images/blank.gif" width="1" /></td>
	</tr>
	<tr>
		<td><img height="1" alt="" src="../../../_layouts/images/blank.gif" width="10" /></td>
		<td>
			<table class="ms-toolbar" style="margin-left: 0px" cellpadding="2" cellspacing="0" border="0" width="100%">
				<tr>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgSave" ToolTip="Add New Group Charge" accessKey="S" tabIndex="1" height="16" width="16" border="0" alt="Add New Group Charge" ImageUrl="../../../_layouts/images/saveitem.gif" runat="server" CssClass="ms-toolbar"></asp:imagebutton>&nbsp;
								</td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdSave" ToolTip="Add New Group Charge" accessKey="S" tabIndex="2" runat="server" CssClass="ms-toolbar" onclick="cmdSave_Click">Save and New</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-separator">|</td>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgSaveBack" ToolTip="Add New Group Charge" accessKey="S" tabIndex="1" height="16" width="16" border="0" alt="Add New Group Charge" ImageUrl="../../../_layouts/images/saveitem.gif" runat="server" CssClass="ms-toolbar"></asp:imagebutton>&nbsp;
								</td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdSaveBack" ToolTip="Add New Group Charge" accessKey="S" tabIndex="2" runat="server" CssClass="ms-toolbar" onclick="cmdSaveBack_Click">Save and Back</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-separator">|</td>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgCancel" title="Cancel Adding New Group Charge" accessKey="C" tabIndex="3" height="16" width="16" border="0" alt="Cancel Adding New Group Charge" ImageUrl="../../../_layouts/images/impitem.gif" runat="server" CssClass="ms-toolbar" CausesValidation="False"></asp:imagebutton></td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdCancel" title="Cancel Adding New Group Charge" accessKey="C" tabIndex="4" runat="server" CssClass="ms-toolbar" CausesValidation="False" onclick="cmdCancel_Click">Cancel</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td width="99%" class="ms-toolbar" id="align02" nowrap="nowrap" align="right"><img height="1" alt="" src="../../../_layouts/images/blank.gif" width="1" />
					</td>
				</tr>
			</table>
			<asp:Label id="lblReferrer" runat="server" Visible="False"></asp:Label>
			<asp:Label id="lblChargeID" runat="server" Visible="False"></asp:Label>
			<asp:Label id="lblProductGroupID" runat="server" Visible="False"></asp:Label>
		</td>
		<td><img height="1" alt="" src="../../../_layouts/images/blank.gif" width="10" /></td>
	</tr>
	<tr>
		<td><img height="1" alt="" src="../../../_layouts/images/blank.gif" width="10" /></td>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tbody>
					<tr>
						<td colspan="3" class="ms-descriptiontext" style="padding-bottom: 10px; PADDING-TOP: 8px">
							<font color="red">*</font> Indicates a required field
						</td>
					</tr>
					<tr>
						<td colspan="3" class="ms-sectionline" height="1">
							<img alt="" src="../../../_layouts/images/empty.gif" /></td>
					</tr>
					<tr>
						<td style="padding-bottom: 20px" valign="top">
							<div class="ms-sectionheader" style="padding-bottom: 8px">Step 1:&nbsp;General 
								Information</div>
							<div class="ms-descriptiontext" style="padding-bottom: 10px">Select&nbsp; charge 
								type.</div>
							<div class="ms-descriptiontext" style="padding-bottom: 10px">Change the default 
								charge amount.</div>
							<div class="ms-descriptiontext" style="padding-bottom: 10px">Check if the charge is 
								in percent or uncheck if the charge is in amount.</div>
						</td>
						<td class="ms-colspace">&nbsp;</td>
						<td class="ms-authoringcontrols ms-formwidth" style="PADDING-RIGHT: 10px; BORDER-TOP: white 1px solid; PADDING-LEFT: 8px; padding-bottom: 20px" valign="top">
							<table class="ms-authoringcontrols" cellspacing="0" cellpadding="0" width="100%" border="0">
								<tr>
									<td class="ms-authoringcontrols" style="padding-bottom: 2px" colspan="2"><label>Charge 
											Type<font color="red">*</font></label>
									</td>
								</tr>
								<tr>
									<td class="ms-formspacer"><img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
									<td class="ms-authoringcontrols" width="100%"><asp:dropdownlist id="cboChargeType" CssClass="ms-long" runat="server" Width="157px" AutoPostBack="True" onselectedindexchanged="cboChargeType_SelectedIndexChanged"></asp:dropdownlist><asp:imagebutton id="imgAdd" ToolTip="Add New Charge" accessKey="N" tabIndex="1" CssClass="ms-toolbar" runat="server" ImageUrl="../../../_layouts/images/newuser.gif" alt="Add New Charge" border="0" width="16" height="16" CausesValidation="False"></asp:imagebutton><asp:requiredfieldvalidator id="Requiredfieldvalidator1" CssClass="ms-error" runat="server" ControlToValidate="cboChargeType" Display="Dynamic" ErrorMessage="'Charge type' must not be left blank."></asp:requiredfieldvalidator></td>
								</tr>
								<tr>
									<td class="ms-formspacer"></td>
								</tr>
								<tr>
									<td class="ms-authoringcontrols" style="padding-bottom: 2px" colspan="2"><label>Charge 
											Amount<font color="red">*</font></label>
									</td>
								</tr>
								<tr>
									<td class="ms-formspacer"><img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
									<td class="ms-authoringcontrols" width="100%"><asp:textbox id="txtChargeAmount" accessKey="P" CssClass="ms-short" runat="server" BorderStyle="Groove" MaxLength="20">0</asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator3" CssClass="ms-error" runat="server" ControlToValidate="txtChargeAmount" Display="Dynamic" ErrorMessage="'Charge amount' must not be left blank."></asp:requiredfieldvalidator></td>
								</tr>
								<tr>
									<td class="ms-formspacer"></td>
								</tr>
								<tr>
									<td class="ms-formspacer"><img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
									<td class="ms-authoringcontrols" width="100%"><asp:checkbox id="chkInPercent" accessKey="I" CssClass="ms-short" runat="server" BorderStyle="Groove" Text="In Percent"></asp:checkbox></td>
								</tr>
								<tr>
									<td class="ms-formspacer"></td>
								</tr>
							</table>
						</td>
					</tr>
                    <tr>
	                    <td colspan="3" class="ms-sectionline" height="2"><img alt="" src="../../../_layouts/images/empty.gif" /></td>
                    </tr>
                    <tr>
	                    <td colspan="3"><img height="10" alt="" src="../../../_layouts/images/blank.gif" width="1" /></td>
                    </tr>
                </tbody>
           </table>
        </td>
	</tr>
</table>

