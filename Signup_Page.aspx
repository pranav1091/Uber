<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup_Page.aspx.cs" Inherits="Signup_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 626px;
    }
    .auto-style4 {
        width: 172px;
    }
    .auto-style6 {
    }
    .auto-style7 {
        text-align: left;
    }
    .auto-style9 {
        text-align: center;
    }
    .auto-style10 {
        height: 2px;
    }
    .auto-style11 {
        height: 5px;
    }
    .auto-style12 {
        text-align: left;
        height: 5px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; background-image: url('Images/signup3.jpg');">
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
            <table style="width:100%;">
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="5" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal; text-align: right;" 
                        width="97%">
                        <asp:Label ID="Lbl_Profile" runat="server" Text="Profie" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="5" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal; text-align: right;" 
                        width="97%">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="2" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="48.5%">
                        <asp:Label ID="Lbl_FName" runat="server" Text="First Name*" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style7" width="48.5%">
                        <asp:TextBox ID="txt_Fname" runat="server" Width="114px"></asp:TextBox>
                    </td>
                    <td class="auto-style7" width="48.5%">
                        <asp:Label ID="Lbl_LName" runat="server" Text="Last Name*" Font-Bold="True" 
                            Font-Names="Consolas" Font-Size="Medium" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style7" width="48.5%">
                        <asp:TextBox ID="txt_Lname" runat="server" Width="117px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="2" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">
                        <asp:Label ID="Lbl_phonenumber" runat="server" Text="Phone Number*" 
                            ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style7" colspan="3" width="97%">
                        <asp:TextBox ID="txt_Phonenumber" runat="server" Width="229px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" width="3%"></td>
                    <td class="auto-style10" colspan="5" 
                        
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal; text-align: left; width: 194%;" 
                        valign="top">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Lbl_phonenumber0" runat="server" Text="Role:*" 
                            ForeColor="White" Font-Bold="False" Font-Size="Large"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddl_role" runat="server" AutoPostBack="True">
                        <asp:ListItem Text=""></asp:ListItem>
                        <asp:ListItem Text="RIDER"></asp:ListItem>
                        <asp:ListItem Text="DRIVER"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="5" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal; text-align: right;" 
                        width="97%">
                        <asp:Label ID="Lbl_account" runat="server" Text="Account" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="5" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="2" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">
                        <asp:Label ID="Lbl_Username" runat="server" Text="UserName*" 
                            ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style7" colspan="3" width="97%">
                        <asp:TextBox ID="txt_Username" runat="server" Width="229px"></asp:TextBox>
                        <asp:Label ID="lblreglabel" runat="server" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="2" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">
                        <asp:Label ID="Lbl_emailid" runat="server" Text="E-MailID*" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style7" colspan="3" width="97%">
                        <asp:TextBox ID="txt_EmailID" runat="server" Width="229px"></asp:TextBox>
                        <asp:Label ID="lblemail" runat="server" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="2" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">
                        <asp:Label ID="Lbl_Password" runat="server" Text="Passowrd*" 
                            ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style7" colspan="3" width="97%">
                        <asp:TextBox ID="txt_Password" runat="server" TextMode="Password" Width="229px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" width="3%"></td>
                    <td class="auto-style11" colspan="2" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%"></td>
                    <td class="auto-style12" colspan="3" width="97%"></td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="5" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal; text-align: right;" 
                        width="97%">
                        <asp:Label ID="Lbl_payment" runat="server" Text="Payment" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="5" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="2" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">
                        <asp:Label ID="Lbl_CCNumber" runat="server" Text="Credit Card Number*" 
                            ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style7" colspan="3" width="97%">
                        <asp:TextBox ID="txt_Cardnumber" runat="server" Width="229px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="2" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">
                        <asp:Label ID="Lbl_CVV" runat="server" Text="CVV Number*" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style7" colspan="3" width="97%">
                        <asp:TextBox ID="txt_CVVNumber" runat="server" Width="229px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">
                        <asp:Label ID="Lbl_expdate" runat="server" Text="Exp Date*" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style6" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal; text-align: left;" 
                        colspan="4" width="97%">
                        &nbsp;<asp:TextBox ID="txt_expdate" runat="server" Width="155px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style6" colspan="2" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">
                        <asp:Label ID="Lbl_Postalcode" runat="server" Text="Postal Code" 
                            ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style7" colspan="3" width="97%">
                        <asp:TextBox ID="txt_postalcode" runat="server" Width="97px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style9" colspan="5" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">
                        <asp:Button ID="btn_signup" runat="server" BackColor="Aqua" Font-Bold="True" 
                            Font-Italic="True" Font-Names="Century Gothic" Font-Size="X-Large" 
                            ForeColor="White" Height="45px" Text="Create Account" Width="256px" 
                            onclick="btn_signup_Click" />
                    </td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style9" colspan="5" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%"><span style="color: rgb(130, 133, 135); font-family: 'Helvetica Neue', Helvetica, Arial, 'Liberation Sans', FreeSans, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.8px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">By signing up, you agree to our<span class="Apple-converted-space">&nbsp;</span></span><a class="popup" href="" style="margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: inherit; line-height: 16.8px; font-family: 'Helvetica Neue', Helvetica, Arial, 'Liberation Sans', FreeSans, sans-serif; font-size: 12px; vertical-align: baseline; color: rgb(0, 160, 255); text-decoration: none; letter-spacing: normal; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" target="_blank">terms 
                        of use</a><span style="color: rgb(130, 133, 135); font-family: 'Helvetica Neue', Helvetica, Arial, 'Liberation Sans', FreeSans, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.8px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">,<span class="Apple-converted-space">&nbsp;</span></span><a class="popup" href="" style="margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: inherit; line-height: 16.8px; font-family: 'Helvetica Neue', Helvetica, Arial, 'Liberation Sans', FreeSans, sans-serif; font-size: 12px; vertical-align: baseline; color: rgb(0, 160, 255); text-decoration: none; letter-spacing: normal; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" target="_blank">privacy 
                        policy</a><span style="color: rgb(130, 133, 135); font-family: 'Helvetica Neue', Helvetica, Arial, 'Liberation Sans', FreeSans, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.8px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">, and</span><a class="popup" href="" style="margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: inherit; line-height: 16.8px; font-family: 'Helvetica Neue', Helvetica, Arial, 'Liberation Sans', FreeSans, sans-serif; font-size: 12px; vertical-align: baseline; color: rgb(0, 160, 255); text-decoration: none; letter-spacing: normal; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" target="_blank">cookie 
                        policy</a><span style="color: rgb(130, 133, 135); font-family: 'Helvetica Neue', Helvetica, Arial, 'Liberation Sans', FreeSans, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.8px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">.</span></td>
                </tr>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td class="auto-style9" colspan="5" 
                        style="font-family: Consolas; font-size: large; font-weight: 100; font-variant: normal" 
                        width="97%">&nbsp;</td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">
                        <asp:Label ID="Lbl_Postalcode0" runat="server" Text="Have an account ?" Font-Bold="False" Font-Names="Consolas"></asp:Label>
                    <asp:LinkButton ID="lbtn_signin" runat="server" Font-Bold="True" 
                            Font-Names="Consolas" onclick="lbtn_signin_Click">Sign In</asp:LinkButton>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

