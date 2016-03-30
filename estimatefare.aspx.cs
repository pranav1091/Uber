using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class estimatefare : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lbtn_Payments_Click(object sender, EventArgs e)
    {
        Response.Redirect("R_Request.aspx");
    }
    protected void lbtn_Trips_Click(object sender, EventArgs e)
    {
        Response.Redirect("R_Trips.aspx");
    }
    protected void lbtn_Profile_Click(object sender, EventArgs e)
    {
        Response.Redirect("R_Profile.aspx");
    }

    protected void lbtn_LogOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void lbtn_FreeRide_Click(object sender, EventArgs e)
    {
        Response.Redirect("R_FreeRide.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("R_Welcome.aspx");
    }
}