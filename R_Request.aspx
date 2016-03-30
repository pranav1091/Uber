<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="R_Request.aspx.cs" Inherits="R_Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            width: 165px;
        }
        .style2
        {
            width: 633px;
            text-align: right;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 50px;
        }
        .style5
        {
            height: 51px;
            text-align: center;
        }
        .style6
        {
            height: 56px;
        }
        .style15
        {
            height: 47px;
        }
        .style16
        {
            width: 246px;
            height: 47px;
            text-align: center;
        }
        .style17
        {
            height: 47px;
        }
        .style18
        {
            height: 47px;
            text-align: left;
        }
        .style19
        {
            width: 217px;
            height: 47px;
            text-align: justify;
        }
        .style23
        {
            height: 47px;
            text-align: center;
        }
        .style24
        {
            height: 8px;
            text-align: left;
        }
        .style25
        {
            height: 8px;
            text-align: center;
        }
        .style26
        {
            height: 8px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                <table class="style3">
                    <tr>
                        <td class="style6">
                            </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:Image ID="Image1" runat="server" Height="133px" 
                                ImageUrl="~/Images/profile.png" Width="140px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <asp:Label ID="lbl_Username" runat="server" ></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style2" valign="top">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" 
                    ImageUrl="~/Images/blue-home-icon.png" onclick="ImageButton1_Click" 
                    Width="40px" />
                <br />
                <div>
                    <table style="width:100%;">
                        <tr>
                            <td class="style19">
                                &nbsp;</td>
                            <td class="style16">
                                <asp:Label ID="Label2" runat="server" Font-Names="Consolas" Font-Size="Medium" 
                                    style="text-decoration: underline" Text="Request Ride"></asp:Label>
                            </td>
                            <td class="style17">
                                </td>
                        </tr>
                        <tr>
                            <td class="style15" colspan="3">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td class="style23">
                                <asp:ImageButton ID="imgbtn_Rtruck" runat="server" Height="63px" 
                                    ImageUrl="~/Images/rtruck.PNG" onclick="imgbtn_Rtruck_Click" Width="97px" />
                                <br />
                                <asp:LinkButton ID="lbtn_Rtruck" runat="server" Font-Names="Consolas" 
                                    Font-Underline="False" ForeColor="Black" onclick="lbtn_Rtruck_Click">Regular Trucks</asp:LinkButton>
&nbsp;</td>
                            <td class="style23" colspan="2">
                                <br />
                                <asp:ImageButton ID="imgbtn_Grate" runat="server" Height="62px" 
                                    ImageUrl="~/Images/goodrate.PNG" Width="100px" 
                                    onclick="imgbtn_Grate_Click" />
                                <br />
                                <asp:LinkButton ID="lbtn_Grate" runat="server" Font-Names="Consolas" 
                                    Font-Underline="False" ForeColor="Black" onclick="lbtn_Grate_Click">Best Rated Drivers</asp:LinkButton>
                            </td>
                            <td class="style23">
                                <br />
                                <br />
                            </td>
                            </tr>
                        <tr>
                            <td class="style23" colspan="3">
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:ImageButton ID="imgbtn_Gtruck" runat="server" Height="62px" 
                                    ImageUrl="~/Images/goodtruck.PNG" Width="107px" 
                                    onclick="imgbtn_Gtruck_Click" />
                                <br />
                                <asp:LinkButton ID="lbtn_Gtruck" runat="server" Font-Names="Consolas" 
                                    Font-Underline="False" ForeColor="Black" onclick="lbtn_Gtruck_Click">XL_Trucks</asp:LinkButton>
                            </td>
                            <td class="style25" valign="top" colspan="2">
                                <asp:ImageButton ID="imgbtn_Aff" runat="server" Height="61px" 
                                    ImageUrl="~/Images/aff.png" Width="120px" onclick="imgbtn_Aff_Click" />
                                <br />
                                <asp:LinkButton ID="lbtn_aff" runat="server" Font-Names="Consolas" 
                                    Font-Underline="False" ForeColor="Black" onclick="lbtn_aff_Click">Affordable Trucks</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td class="style23" colspan="3">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        </table>
                </div>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <table class="style3">
                    <tr>
                        <td>
                            <asp:LinkButton ID="lbtn_Trips" runat="server" Font-Bold="True" 
                                Font-Names="Consolas" Font-Size="Medium" Font-Underline="False" 
                                ForeColor="Black" onclick="lbtn_Trips_Click">My Trips</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="lbtn_Profile" runat="server" Font-Bold="True" 
                                Font-Names="Consolas" Font-Size="Medium" Font-Underline="False" 
                                ForeColor="Black" onclick="lbtn_Profile_Click">Profile</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="lbtn_Payments" runat="server" Font-Bold="True" 
                                Font-Names="Consolas" Font-Size="Medium" Font-Underline="False" 
                                ForeColor="Black" onclick="lbtn_Payments_Click">Request </asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="lbtn_FreeRide" runat="server" Font-Bold="True" 
                                Font-Italic="True" Font-Names="Consolas" Font-Size="Medium" 
                                Font-Underline="False" ForeColor="Black" onclick="lbtn_FreeRide_Click">Free Rides!</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="lbtn_LogOut" runat="server" Font-Bold="True" 
                                Font-Italic="False" Font-Names="Consolas" Font-Size="Medium" 
                                Font-Underline="False" ForeColor="Black" onclick="lbtn_LogOut_Click">Log Out</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style2" valign="top">
                &nbsp;</td>
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