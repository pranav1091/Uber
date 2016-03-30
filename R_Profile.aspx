<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="R_Profile.aspx.cs" Inherits="R_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 165px;
        }
        .style2
        {
            width: 633px;
            text-align: center;
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
        .style7
        {
            width: 128px;
        }
        .style8
        {
            width: 246px;
        }
        .style9
        {
            width: 128px;
            height: 52px;
            text-align: justify;
        }
        .style10
        {
            width: 246px;
            height: 52px;
            text-align: justify;
        }
        .style11
        {
            height: 52px;
            text-align: justify;
        }
        .style12
        {
            width: 128px;
            height: 54px;
            text-align: justify;
        }
        .style13
        {
            width: 246px;
            height: 54px;
            text-align: justify;
        }
        .style14
        {
            height: 54px;
            text-align: justify;
        }
        .style15
        {
            width: 128px;
            height: 47px;
        }
        .style16
        {
            width: 246px;
            height: 47px;
            text-align: justify;
        }
        .style17
        {
            height: 47px;
        }
        .style18
        {
            height: 47px;
            text-align: justify;
        }
        .style19
        {
            width: 128px;
            height: 47px;
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" 
                    ImageUrl="~/Images/blue-home-icon.png" onclick="ImageButton1_Click" 
                    Width="40px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
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
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Italic="False" 
                    Font-Names="Consolas" Font-Size="Large" Font-Underline="True" Text="PROFILE"></asp:Label>
                <br />
                <hr />
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Italic="False" 
                    Font-Names="Consolas" Font-Size="Large" Font-Underline="True" 
                    Text="GENERAL INFORMATION"></asp:Label>
                <br />
                <hr />
                <div>
                    <table style="width:100%;">
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Consolas" Font-Size="Small" Font-Underline="False" 
                                    Text="FIRST NAME:"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txt_fname" runat="server" Font-Bold="False" Font-Italic="True" 
                                    AutoCompleteType="FirstName">First Name</asp:TextBox>
&nbsp;</td>
                            <td class="style11">
                                <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Consolas" Font-Size="Small" Font-Underline="False" Text="Location:"></asp:Label>
&nbsp;<asp:DropDownList ID="ddl_location" runat="server" AutoPostBack="True" Font-Names="Consolas">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>United States</asp:ListItem>
                                <asp:ListItem>Canada</asp:ListItem>
                                <asp:ListItem>United Kingdom</asp:ListItem>
                                <asp:ListItem>France</asp:ListItem>
                                <asp:ListItem>Spain</asp:ListItem>
                                <asp:ListItem>Finland</asp:ListItem>
                                <asp:ListItem>Poland</asp:ListItem>
                                <asp:ListItem>Germany</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Japan</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
                                <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Consolas" Font-Size="Small" Font-Underline="False" 
                                    Text="LAST NAME:"></asp:Label>
                            </td>
                            <td class="style13">
                                <asp:TextBox ID="txt_lname" runat="server" Font-Italic="True" 
                                    AutoCompleteType="LastName">Last Name</asp:TextBox>
                            </td>
                            <td class="style14">
                                <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Consolas" Font-Size="Small" Font-Underline="False" 
                                    Text="Email:"></asp:Label>
                                <asp:TextBox ID="txt_email" runat="server" Font-Italic="True" 
                                    AutoCompleteType="Email"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style19">
                                <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Consolas" Font-Size="Small" Font-Underline="False" 
                                    Text="Mobile:"></asp:Label>
                            </td>
                            <td class="style16">
                                <asp:DropDownList ID="ddl_mobile" runat="server" Font-Names="Consolas">
                                <asp:ListItem>+1 United States</asp:ListItem>
                                <asp:ListItem>+1 Canada</asp:ListItem>
                                <asp:ListItem>+44 United Kingdom</asp:ListItem>
                                <asp:ListItem>+33 France</asp:ListItem>
                                <asp:ListItem>+34 Spain</asp:ListItem>
                                <asp:ListItem>+358 Finland</asp:ListItem>
                                <asp:ListItem>+48 Poland</asp:ListItem>
                                <asp:ListItem>+49 Germany</asp:ListItem>
                                <asp:ListItem>+91 India</asp:ListItem>
                                <asp:ListItem>+81 Japan</asp:ListItem>
                                </asp:DropDownList>
                            &nbsp;<br />
                                <asp:TextBox ID="TextBox1" runat="server" Width="149px"></asp:TextBox>
                            </td>
                            <td class="style17">
                                </td>
                        </tr>
                        <tr>
                            <td class="style15">
                                <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Italic="False" 
                                    Font-Names="Consolas" Font-Size="Small" Font-Underline="False" 
                                    Text="Profile Photo"></asp:Label>
                            </td>
                            <td class="style16">
                                <asp:Image ID="Image2" runat="server" Height="27px" 
                                    ImageUrl="~/Images/profile.png" Width="32px" />
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                            <td class="style18">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style15">
                                &nbsp;</td>
                            <td class="style16" valign="top">
                                <asp:Button ID="btn_ok" runat="server" Font-Names="Consolas" Text="Update" />
&nbsp;
                                <asp:Button ID="btn_Cancel" runat="server" Font-Names="Consolas" 
                                    Text="Cancel" />
                            </td>
                            <td class="style18">
                                &nbsp;</td>
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
                <br />
                <asp:Button ID="btn_Update" runat="server" BackColor="Aqua" Font-Bold="True" 
                            Font-Italic="True" Font-Names="Century Gothic" Font-Size="Medium" 
                            ForeColor="White" Height="43px" Text="Update Profile" 
                    Width="284px" onclick="btn_Update_Click"/>&nbsp;</td>
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