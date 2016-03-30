<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="D_Login_Page.aspx.cs" Inherits="D_Login_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            width: 119px;
        }
        .style2
        {
            width: 671px;
        }
        .style3
        {
            width: 739px;
        }
        .style4
        {
            text-align: center;
        }
        .style5
        {
            width: 119px;
            height: 270px;
        }
        .style6
        {
            width: 671px;
            height: 270px;
        }
        .style7
        {
            height: 270px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width:100%; height: 471px; background-image: url('Images/2nd.jpg');">
    <tr>
        <td class="style1">&nbsp;</td>
        <td class="style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style1">&nbsp;</td>
        <td class="style2">
            <table style="width: 100%;">
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style4" rowspan="11">
                        <asp:Label ID="Lbl_Username" runat="server" Text="UserName:" Font-Bold="False" 
                            Font-Names="Consolas" Font-Size="Medium" BorderStyle="None" 
                            Font-Italic="False" ForeColor="White"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_Username" runat="server" Width="185px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Lbl_Password" runat="server" Text="Password: " Font-Bold="False" 
                            Font-Names="Consolas" Font-Size="Medium" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="txt_Password" runat="server" TextMode="Password" Width="185px"></asp:TextBox>
                        <br />
                        <asp:Label ID="lbl_loginmsg" runat="server" ForeColor="White"></asp:Label>
                        <br />
                        <asp:Label ID="Lbl_Postalcode0" runat="server" Text="New User ?" 
                            Font-Bold="False" Font-Names="Consolas" ForeColor="White"></asp:Label>
                    <asp:LinkButton ID="lbtn_signin" runat="server" Font-Bold="True" 
                            Font-Names="Consolas" ForeColor="#3399FF" onclick="lbtn_signin_Click">Sign Up</asp:LinkButton>
                        <asp:Button ID="btn_signup" runat="server" BackColor="Aqua" Font-Bold="True" 
                            Font-Italic="True" Font-Names="Century Gothic" Font-Size="Medium" 
                            ForeColor="White" Height="30px" Text="Sign In" Width="145px" onclick="btn_signup_Click" 
                             />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style5"></td>
        <td class="style6"></td>
        <td class="style7"></td>
    </tr>
</table>
</asp:Content>

