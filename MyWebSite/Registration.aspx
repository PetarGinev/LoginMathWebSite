<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MyWebSite.WebForm1" MasterPageFile="~/MyMasterPage.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Username:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Please enter valid username!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="LabelUNameTaken" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">First Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxFirstName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="ValidateFName" runat="server" ControlToValidate="TextBoxFirstName" ErrorMessage="Please enter your first name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Last Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxLastName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="ValidateLName" runat="server" ControlToValidate="TextBoxLastName" ErrorMessage="Please enter your last name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Date of Birth:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBoxDoB" runat="server" TextMode="Date" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="ValidatoDoB" runat="server" ControlToValidate="TextBoxDoB" ErrorMessage="Please enter your date of birth!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">E-mail:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please Enter a Valid Email Address!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                &nbsp;<br />
                    <asp:Label ID="LabelEmailTaken" runat="server" Visible="False"></asp:Label>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Password is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Confirm Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxRPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPassword" ErrorMessage="Confirm Password is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxRPassword" ErrorMessage="Both Passwords Must be Same!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Country:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Width="188px">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Select a country name!" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonSubmit" runat="server" OnClick="ButtonSubmit_Click" Text="Submit" style="width: 90px" Width="90px" />
                    <input id="ResetButton" type="reset" value="Reset" class="auto-style15" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="LabelRegistration" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        text-align: left;
    }
    .auto-style2 {
        height: 58px;
    }
    .auto-style3 {
        text-align: left;
        height: 58px;
    }
    .auto-style4 {
        height: 59px;
    }
    .auto-style5 {
        text-align: left;
        height: 59px;
    }
    .auto-style6 {
        height: 60px;
    }
    .auto-style7 {
        text-align: left;
        height: 60px;
    }
    .auto-style8 {
        height: 61px;
    }
    .auto-style10 {
        height: 57px;
    }
    .auto-style11 {
        text-align: left;
        height: 57px;
    }
    .auto-style12 {
        text-align: left;
        height: 38px;
    }
    .auto-style13 {
        height: 38px;
    }
        .auto-style15 {
            width: 90px;
        }
    </style>
</asp:Content>

