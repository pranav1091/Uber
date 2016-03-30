<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
<script type="text/javascript">
    var source, destination;
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();
    google.maps.event.addDomListener(window, 'load', function () {
        new google.maps.places.SearchBox(document.getElementById('txtSource'));
        new google.maps.places.SearchBox(document.getElementById('txtDestination'));
        directionsDisplay = new google.maps.DirectionsRenderer({ 'draggable': true });
    });

    function GetRoute() {
        var LongBeach = new google.maps.LatLng(33.780852, -118.115257);
        var mapOptions = {
            zoom: 7,
            center: LongBeach
        };
        map = new google.maps.Map(document.getElementById('dvMap'), mapOptions);
        directionsDisplay.setMap(map);
        directionsDisplay.setPanel(document.getElementById('dvPanel'));

        //*********DIRECTIONS AND ROUTE**********************//
        source = document.getElementById("txtSource").value;
        destination = document.getElementById("txtDestination").value;

        var request = {
            origin: source,
            destination: destination,
            travelMode: google.maps.TravelMode.DRIVING
        };
        directionsService.route(request, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            }
        });

        //*********DISTANCE AND DURATION**********************//
        var service = new google.maps.DistanceMatrixService();
        service.getDistanceMatrix({
            origins: [source],
            destinations: [destination],
            travelMode: google.maps.TravelMode.DRIVING,
            unitSystem: google.maps.UnitSystem.METRIC,
            avoidHighways: false,
            avoidTolls: false
        }, function (response, status) {
            if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {
                var distance = response.rows[0].elements[0].distance.text;
                var duration = response.rows[0].elements[0].duration.text;
                var dvDistance = document.getElementById("dvDistance");
                var fare = ((rows[i].elements[j].distance.value * 10) / 1609);
                dvDistance.innerHTML = "";
                dvDistance.innerHTML += "Distance: " + distance + "<br />";
                dvDistance.innerHTML += "Duration:" + duration;
                dvDistance.innerHTML += "$ " + fare.toPrecision(6);

            } else {
                alert("Unable to find the distance via road.");
            }
        });
    }
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
        .style17
        {
            height: 47px;
        }
        .style18
        {
            height: 47px;
            text-align: left;
        }
        .style21
        {
            width: 246px;
            height: 47px;
            text-align: left;
        }
        .style22
        {
            height: 47px;
            text-align: right;
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
            width: 246px;
            height: 8px;
            text-align: left;
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
                            <td class="style15">
                            <table border="0" cellpadding="0" cellspacing="3">
<tr>
    <td colspan="2" style="text-align: left">
        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Italic="True" 
            Font-Names="Consolas" Font-Size="Large" Font-Underline="True" 
            Text="Calculate Optimal Route, Estimate Time and the distance"></asp:Label>
    </td>
</tr>
<tr>
    <td colspan="2" style="text-align: left">
        &nbsp;</td>
</tr>
<tr>
    <td colspan="2">
        Source:
        <input type="text" id="txtSource"  style="width: 200px" />
        &nbsp; Destination:
        <input type="text" id="txtDestination"  style="width: 200px" />
        <br />
        <input type="button" value="Get Route" onclick="GetRoute()" />
        <hr />
    </td>
</tr>
<tr>
    <td colspan="2">
        <div id="dvDistance">
        </div>
    </td>
</tr>
<tr>
    <td>
        <div id="dvMap" style="width: 350px; height: 350px">
        </div>
    </td>
    <td>
        <div id="dvPanel" style="width: 350px; height: 350px">
        </div>
    </td>
</tr>
</table>
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
                &nbsp;</td>
            <td class="style2" valign="top">
                &nbsp;</td>
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
                    <table style="width:100%;">
                        <tr>
                            <td class="style22">
                                        <asp:Button ID="Button2" runat="server" 
                    BackColor="#B2B2B2" Font-Bold="False" 
                                            Font-Names="Consolas" Font-Size="Medium" 
                    ForeColor="White" Height="55px" 
                                            Text="Fare Estimator" Width="157px" onclick="Button2_Click" 
                    />
                                    </td>
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

