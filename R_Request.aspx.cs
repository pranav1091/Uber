using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class R_Request : System.Web.UI.Page
{
    DataClassesDataContext _mycontext = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            //Retrieving UserName from Session
            lbl_Username.Text = "" + Session["UserName"];
        }
        else
        {
            lbl_Username.Text = "";
        }

        DataSet dataSet = new DataSet();
        dataSet.ReadXml(@"F:\DBProject\LocData.xml");
       
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

    protected void imgbtn_Rtruck_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Request_Regular.aspx");
    }
    protected void lbtn_Rtruck_Click(object sender, EventArgs e)
    {
        Response.Redirect("Request_Regular.aspx");
    }
    protected void imgbtn_Gtruck_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("XL_Trucks.aspx");
    }
    protected void lbtn_Gtruck_Click(object sender, EventArgs e)
    {
        Response.Redirect("XL_Trucks.aspx");
    }
    protected void imgbtn_Grate_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Good_Rate.aspx");
    }
    protected void lbtn_Grate_Click(object sender, EventArgs e)
    {
        Response.Redirect("Good_Rate.aspx");
    }
    protected void imgbtn_Aff_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Aff_Truck.aspx");
    }
    protected void lbtn_aff_Click(object sender, EventArgs e)
    {
        Response.Redirect("Aff_Truck.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("R_Welcome.aspx");
    }
}