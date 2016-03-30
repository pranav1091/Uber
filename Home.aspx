<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type ="text/javascript">

    window.onload = window.history.forward(0);  //calling function on window onload
    
</script> 
    <style type="text/css">
        .style1
        {
            width: 56px;
        }
        .style2
        {
            width: 767px;
        }
        .style3
        {
            width: 87px;
        }
        .style4
        {
            width: 569px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="#070716" style="width: 100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <table style="width: 100%;">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" 
                                Text="------------------"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" 
                                Font-Names="Consolas" Font-Size="Medium" ForeColor="White" Text="Log In"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" 
                                Text="------------------"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            <table style="width: 100%;">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td style="text-align: center">
                                        <asp:Button ID="Button1" runat="server" BackColor="#1FBAD6" Font-Bold="False" 
                                            Font-Names="Consolas" Font-Size="Medium" ForeColor="White" Height="55px" 
                                            onclick="Button1_Click" Text="LOG IN AS A RIDER" Width="313px" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td style="text-align: center">
                                        <asp:Button ID="Button2" runat="server" BackColor="#B2B2B2" Font-Bold="False" 
                                            Font-Names="Consolas" Font-Size="Medium" ForeColor="White" Height="55px" 
                                            Text="LOG IN AS A DRIVER" Width="313px" onclick="Button2_Click" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

