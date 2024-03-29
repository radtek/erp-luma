<%@ Control Language="c#" Inherits="AceSoft.RetailPlus.Security._AccessUser.__Update" Codebehind="_Update.ascx.cs" %>
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
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgSave" ToolTip="Add New Access User" accessKey="S" tabIndex="1" height="16" width="16" border="0" alt="Add New Access User" ImageUrl="../../../_layouts/images/saveitem.gif" runat="server" CssClass="ms-toolbar" OnClick="imgSave_Click"></asp:imagebutton>&nbsp;
								</td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdSave" ToolTip="Add New Access User" accessKey="S" tabIndex="2" runat="server" CssClass="ms-toolbar" onclick="cmdSave_Click">Save and New</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-separator">|</td>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgSaveBack" ToolTip="Add New Access User" accessKey="S" tabIndex="1" height="16" width="16" border="0" alt="Add New Access User" ImageUrl="../../../_layouts/images/saveitem.gif" runat="server" CssClass="ms-toolbar" OnClick="imgSaveBack_Click"></asp:imagebutton>&nbsp;
								</td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdSaveBack" ToolTip="Add New Access User" accessKey="S" tabIndex="2" runat="server" CssClass="ms-toolbar" onclick="cmdSaveBack_Click">Save and Back</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-separator">|</td>
					<td class="ms-toolbar">
						<table cellspacing="0" cellpadding="1" border="0">
							<tr>
								<td class="ms-toolbar" nowrap="nowrap"><asp:imagebutton id="imgCancel" title="Cancel Adding New Access User" accessKey="C" tabIndex="3" height="16" width="16" border="0" alt="Cancel Adding New Access User" ImageUrl="../../../_layouts/images/impitem.gif" runat="server" CssClass="ms-toolbar" CausesValidation="False" OnClick="imgCancel_Click"></asp:imagebutton></td>
								<td nowrap="nowrap"><asp:linkbutton id="cmdCancel" title="Cancel Adding New Access User" accessKey="C" tabIndex="4" runat="server" CssClass="ms-toolbar" CausesValidation="False" onclick="cmdCancel_Click">Cancel</asp:linkbutton></td>
							</tr>
						</table>
					</td>
					<td class="ms-toolbar" id="align02" nowrap="nowrap" align="right" width="99%"><img height="1" alt="" src="../../../_layouts/images/blank.gif" width="1" />
					</td>
				</tr>
			</table>
			<asp:label id="lblReferrer" runat="server" Visible="False"></asp:label>
			<asp:Label id="lblUID" runat="server" Visible="False"></asp:Label></td>
		<td><img height="1" alt="" src="../../../_layouts/images/blank.gif" width="10" /></td>
	</tr>
	<tr>
		<td><img height="1" alt="" src="../../../_layouts/images/blank.gif" width="10" /></td>
		<td>
			<table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tr>
					<td class="ms-descriptiontext" style="padding-bottom: 4px; PADDING-TOP: 8px" colspan="3"><font color="red">*</font>
						Indicates a required field
					</td>
				</tr>
				<tr>
					<td class="ms-descriptiontext" style="padding-bottom: 10px; PADDING-TOP: 8px" colspan="3">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" CssClass="ms-error" ForeColor=" "></asp:ValidationSummary></td>
				</tr>
				<tr>
					<td class="ms-sectionline" colspan="3" height="1"><img alt="" src="../../../_layouts/images/empty.gif" /></td>
				</tr>
				<tr>
					<td colspan="3" class="ms-authoringcontrols ms-formwidth" style="PADDING-RIGHT: 10px; BORDER-TOP: white 1px solid; PADDING-LEFT: 8px; padding-bottom: 20px" valign="top">
					    <table border="0" cellpadding="0" cellspacing="0" class="ms-authoringcontrols" width="90%">
                            <tr>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>User Name<font color="red">*</font></label></td>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>Full Name<font color="red">*</font></label></td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer"><img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtUserName" accessKey="S" runat="server" CssClass="ms-long-disabled" MaxLength="15" BorderStyle="Groove"></asp:textbox>
									<asp:RequiredFieldValidator id="RequiredFieldValidator1" CssClass="ms-error" runat="server" ErrorMessage="'User name' must not be left blank." Display="Dynamic" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                                </td>
                                <td class="ms-formspacer"><img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtName" accessKey="S" runat="server" CssClass="ms-long" MaxLength="150" BorderStyle="Groove"></asp:textbox>
									<asp:RequiredFieldValidator id="RequiredFieldValidator3" CssClass="ms-error" runat="server" ErrorMessage="'Full Name' must not be left blank." Display="Dynamic" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer" height="20">
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>Enter Password<font color="red">*</font></label></td>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>Confirm Password<font color="red">*</font></label></td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtPassword" accessKey="S" runat="server" CssClass="ms-long" MaxLength="15" BorderStyle="Groove" TextMode="Password"></asp:textbox>
                                    <label><font color="red">Do not enter anything if you do not want to change the password.</font></label>
                                </td>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtConfirm" accessKey="C" runat="server" CssClass="ms-long" MaxLength="15" BorderStyle="Groove" TextMode="Password"></asp:textbox>
									<asp:CompareValidator id="CompareValidator1" runat="server" CssClass="ms-error" ControlToValidate="txtConfirm" Display="Dynamic" ErrorMessage="'Password' must be equal to the Confirmed password." ControlToCompare="txtPassword"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer" height="20">
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-authoringcontrols" colspan="2" style="padding-bottom: 2px">
                                    <label>
                                        User group<font color="red">*</font></label></td>
                                <td class="ms-authoringcontrols" colspan="2" style="padding-bottom: 2px">
                                </td>
                                <td class="ms-authoringcontrols" colspan="2" style="padding-bottom: 2px">
                                </td>
                                <td class="ms-authoringcontrols" colspan="2" style="padding-bottom: 2px">
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols">
                                    <asp:dropdownlist id="cboGroup" runat="server" CssClass="ms-long"></asp:dropdownlist>
									<asp:RequiredFieldValidator id="RequiredFieldValidator5" CssClass="ms-error" runat="server" ErrorMessage="'Group' must not be left blank." Display="Dynamic" ControlToValidate="cboGroup"></asp:RequiredFieldValidator>
                                </td>
                                <td class="ms-formspacer"><img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols">
                                </td>
                                <td class="ms-formspacer"><img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols">
                                </td>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols">
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer" height="20">
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>Address 1<font color="red">*</font></label></td>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>Address 2<font color="red">*</font></label></td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtAddress1" accessKey="S" runat="server" CssClass="ms-long" MaxLength="2000" Height="40px" TextMode="MultiLine" Rows="5" BorderStyle="Groove"></asp:textbox>
                                </td>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtAddress2" accessKey="S" runat="server" CssClass="ms-long" MaxLength="2000" Height="40px" TextMode="MultiLine" Rows="5" BorderStyle="Groove"></asp:textbox>
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer" height="20">
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>City<font color="red">*</font></label></td>
                                <td class="ms-authoringcontrols" colspan="2" style="padding-bottom: 2px">
                                    <label>State<font color="red">*</font></label></td>
                                <td class="ms-authoringcontrols" colspan="2" style="padding-bottom: 2px">
                                    <label>Country<font color="red">*</font></label></td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtCity" accessKey="S" runat="server" CssClass="ms-long" MaxLength="15" BorderStyle="Groove"></asp:textbox>
                                </td>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols">
                                    <asp:textbox id="txtState" accessKey="S" runat="server" CssClass="ms-short" MaxLength="15" BorderStyle="Groove"></asp:textbox>
                                </td>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols">
                                    <asp:dropdownlist id="cboCountry" CssClass="ms-short" runat="server"></asp:dropdownlist>
									<asp:RequiredFieldValidator id="RequiredFieldValidator4" CssClass="ms-error" runat="server" ControlToValidate="cboCountry" Display="Dynamic" ErrorMessage="'Country' must not be left blank."></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer" height="20">
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>Office No (Separated by comma)<font color="red">*</font></label></td>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>direct phone numbers (Separated by comma)<font color="red">*</font></label></td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer" style="height: 40px">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3" style="height: 40px">
                                    <asp:textbox id="txtOfficePhone" accessKey="O" runat="server" CssClass="ms-long" MaxLength="150" BorderStyle="Groove" Rows="2"></asp:textbox>
                                </td>
                                <td class="ms-formspacer" style="height: 40px">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3" style="height: 40px">
                                    <asp:textbox id="txtDirectPhone" accessKey="D" runat="server" CssClass="ms-long" MaxLength="150" BorderStyle="Groove" Rows="2"></asp:textbox>
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer" height="20">
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>Home Telephone No (Separated by comma)<font color="red">*</font></label></td>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>Fax numbers(Separated by comma)<font color="red">*</font></label></td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtHomePhone" accessKey="H" runat="server" CssClass="ms-long" MaxLength="150" BorderStyle="Groove" Rows="2"></asp:textbox>
                                </td>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtFaxNumber" accessKey="F" runat="server" CssClass="ms-long" MaxLength="150" BorderStyle="Groove" Rows="2"></asp:textbox>
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer" height="20">
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>Mobile Nos (Separated by comma)<font color="red">*</font></label></td>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>Email Address<font color="red">*</font></label></td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtMobile" accessKey="M" runat="server" CssClass="ms-long" MaxLength="150" BorderStyle="Groove" Rows="2"></asp:textbox>
                                </td>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtEmail" accessKey="E" runat="server" CssClass="ms-long" MaxLength="150" BorderStyle="Groove" Rows="2"></asp:textbox>
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer" height="20">
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px">
                                    <label>Enter page size or the number of records you want to display in a single page.<font color="red">*</font></label></td>
                                <td class="ms-authoringcontrols" colspan="4" style="padding-bottom: 2px"></td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                    <asp:textbox id="txtPageSize" accessKey="E" runat="server" CssClass="ms-short" MaxLength="5" BorderStyle="Groove"></asp:textbox>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator6" CssClass="ms-error" runat="server" ControlToValidate="txtPageSize" Display="Dynamic" ErrorMessage="'Page Size' must not be left blank."></asp:RequiredFieldValidator>
									<asp:RegularExpressionValidator id="RegularExpressionValidator6" CssClass="ms-error" runat="server" ControlToValidate="txtPageSize" Display="Dynamic" ErrorMessage="'Page Size' must be in number, max of 3 decimal places." ValidationExpression="^\s*-?([\d\,]+(\.\d{1,3})?|\.\d{1,3})\s*$" ></asp:RegularExpressionValidator>
									
                                </td>
                                <td class="ms-formspacer">
                                    <img alt="" src="../../../_layouts/images/trans.gif" width="10" /></td>
                                <td class="ms-authoringcontrols" colspan="3">
                                </td>
                            </tr>
                            <tr>
                                <td class="ms-formspacer">
                                </td>
                            </tr>
                        </table>
					</td>
				</tr>
				<tr>
					<td class="ms-sectionline" colspan="3" height="2"><img alt="" src="../../../_layouts/images/empty.gif" /></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="3"><img height="10" alt="" src="../../../_layouts/images/blank.gif" width="1" /></td>
	</tr>
</table>