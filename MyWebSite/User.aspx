<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="MyWebSite.User"  MasterPageFile="~/MyMasterPage.master"%>

<asp:Content ID="Content3" ContentPlaceHolderID ="ContentPlaceHolder1" runat="server">
        <div class="auto-style4">
            <div class="auto-style4">
            <asp:Label ID="LabelWelcome" runat="server"></asp:Label>
                <br />
                <asp:HyperLink ID="HyperLinkDB" runat="server" NavigateUrl="Admin.aspx">You can check our database here!</asp:HyperLink>
                <br />
                <br />
            </div>
            <div style="text-align:left; margin-left: auto; margin-right: auto;" class="auto-style9">
            <table class="auto-style19">
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="LabelAddLeft" runat="server" Text="?"></asp:Label>
                    </td>
                    <td class="auto-style12">+</td>
                    <td class="auto-style20">
                        <asp:Label ID="LabelAddRight" runat="server" Text="?"></asp:Label>
                    </td>
                    <td class="auto-style12">=</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBoxAdd" runat="server" Width="70px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxAdd" ErrorMessage="Please enter value!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <asp:Label ID="LabelMinusLeft" runat="server" Text="?"></asp:Label>
                    </td>
                    <td class="auto-style13">-</td>
                    <td class="auto-style21">
                        <asp:Label ID="LabelMinusRight" runat="server" Text="?"></asp:Label>
                    </td>
                    <td class="auto-style13">=</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TextBoxMinus" runat="server" Width="70px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxMinus" ErrorMessage="Please enter value!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="LabelMultiplyLeft" runat="server" Text="?"></asp:Label>
                    </td>
                    <td class="auto-style12">*</td>
                    <td class="auto-style20">
                        <asp:Label ID="LabelMultiplyRight" runat="server" Text="?"></asp:Label>
                    </td>
                    <td class="auto-style12">=</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBoxMul" runat="server" Width="70px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxMul" ErrorMessage="Please enter value!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:Label ID="LabelDivLeft" runat="server" Text="?"></asp:Label>
                    </td>
                    <td class="auto-style12">/</td>
                    <td class="auto-style20">
                        <asp:Label ID="LabelDivRight" runat="server" Text="?"></asp:Label>
                    </td>
                    <td class="auto-style12">=</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBoxDiv" runat="server" Width="70px" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxDiv" ErrorMessage="Please enter value!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                    </td>
                    <td class="auto-style14"></td>
                    <td class="auto-style22">
            <asp:Button ID="ButtonStart" CausesValidation="false" runat="server" Text="Start" OnClick="ButtonStart_Click" Width="50px" />
                    </td>
                    <td class="auto-style14">
            <asp:Button ID="ButtonCheck" runat="server" Text="Check" OnClick="ButtonCheck_Click" Width="63px" />
                    </td>
                    <td class="auto-style31">
                    </td>
                    <td class="auto-style28">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">
                        &nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style31">
                        <asp:Label ID="LabelResultsSum" runat="server" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="LabelResultsDifference" runat="server" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="LabelResultsProduct" runat="server" Visible="False"></asp:Label>
                        <br />
                        <asp:Label ID="LabelResultsQuotient" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style28">
                        &nbsp;</td>
                </tr>
            </table>
                </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </div>
        <asp:Button ID="ButtonLogOut" CausesValidation="false" runat="server" OnClick="ButtonLogOut_Click" Text="Log Out" />
        </asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style9 {
            width: 35%;
        }
        .auto-style12 {
            width: 50px;
            text-align: center;
        }
        .auto-style13 {
            width: 50px;
            height: 31px;
            text-align: center;
        }
        .auto-style14 {
            width: 50px;
            text-align: center;
            height: 39px;
        }
        .auto-style19 {
            width: 553px;
        }
        .auto-style20 {
            width: 70px;
            text-align: center;
        }
        .auto-style21 {
            width: 70px;
            height: 31px;
            text-align: center;
        }
        .auto-style22 {
            width: 70px;
            text-align: center;
            height: 39px;
        }
        .auto-style26 {
            width: 164px;
            text-align: center;
        }
        .auto-style27 {
            width: 164px;
            height: 31px;
            text-align: center;
        }
        .auto-style28 {
            width: 164px;
            text-align: center;
            height: 39px;
        }
        .auto-style29 {
            width: 359px;
            text-align: center;
        }
        .auto-style30 {
            width: 359px;
            height: 31px;
            text-align: center;
        }
        .auto-style31 {
            width: 359px;
            text-align: center;
            height: 39px;
        }
    </style>
   
</asp:Content>
