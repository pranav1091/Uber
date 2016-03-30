<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="estimatefare.aspx.cs" Inherits="estimatefare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type ="text/javascript">

    window.onload = window.history.forward(0);  //calling function on window onload
    
</script> 
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
        .style19
        {
            width: 217px;
            height: 47px;
            text-align: justify;
        }
        .style23
        {
            text-align: center;
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
                                    style="text-decoration: underline" Text="Fare Estimate"></asp:Label>
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
                            <td class="style23" colspan="3">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="3" DataSourceID="SqlDataSource1" Font-Names="Consolas" 
                                    Font-Size="Small">
                                    <Columns>
                                        <asp:BoundField DataField="Regular Truck" HeaderText="Regular Truck" 
                                            SortExpression="Regular Truck" />
                                        <asp:BoundField DataField="XL Truck" HeaderText="XL Truck" 
                                            SortExpression="XL Truck" />
                                        <asp:BoundField DataField="Best Rated Driver" HeaderText="Best Rated Driver" 
                                            SortExpression="Best Rated Driver" />
                                        <asp:BoundField DataField="Cheapest Truck" HeaderText="Cheapest Truck" 
                                            SortExpression="Cheapest Truck" />
                                    </Columns>
                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                    <RowStyle ForeColor="#000066" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:DBProjectDatabaseConnectionString %>" 
                                    SelectCommand="SELECT * FROM [fareestimate]"></asp:SqlDataSource>
                                <br />
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

