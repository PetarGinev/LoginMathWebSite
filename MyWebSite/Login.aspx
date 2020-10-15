<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyWebSite.Login" MasterPageFile="~/MyMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">
            <div class="auto-style6">
                <strong>Login</strong></div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LoginUName" runat="server" Text="Please enter your username: "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxUserLogin" runat="server" Width="120px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="UNameLoginValidation" runat="server" ControlToValidate="TextBoxUserLogin" ErrorMessage="Please enter valid username!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="LoginPass" runat="server" Text="Please enter your password: "></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxPassLogin" runat="server" TextMode="Password" Width="120px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="PassLoginValidation" runat="server" ControlToValidate="TextBoxPassLogin" ErrorMessage="Please enter password!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" Width="100px" />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="incorrectLabel" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="ButtonRegister" CausesValidation="false" runat="server" OnClick="ButtonRegister_Click" Text="Register" Width="100px"/>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
            </table>
</asp:Content>
