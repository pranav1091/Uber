<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="R_Welcome.aspx.cs" Inherits="User1stPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (p) {
            var LatLng = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
            var mapOptions = {
                center: LatLng,
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            var marker = new google.maps.Marker({
                position: LatLng,
                map: map,
                title: "<div style = 'height:60px;width:200px'><b>Your location:</b><br />Latitude: " + p.coords.latitude + "<br />Longitude: " + p.coords.longitude
            });
            google.maps.event.addListener(marker, "click", function (e) {
                var infoWindow = new google.maps.InfoWindow();
                infoWindow.setContent(marker.title);
                infoWindow.open(map, marker);
            });
        });
    } else {
        alert('Geo Location feature is not supported in this browser.');
    }
</script>
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
            width: 165px;
            height: 93px;
        }
        .style8
        {
            width: 633px;
            height: 93px;
            text-align: right;
        }
        .style9
        {
            height: 93px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style7" rowspan="2">
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
            <td class="style8" valign="top">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" 
                    ImageUrl="~/Images/blue-home-icon.png" onclick="ImageButton1_Click" 
                    Width="40px" />
            </td>
            <td class="style9" rowspan="2">
                </td>
        </tr>
        <tr>
            <td class="style8" valign="top">
                <div id="dvMap" style="width: 550px; height: 350px">
                </div>
            </td>
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
            <td class="style2">
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

