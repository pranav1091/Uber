using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class XL_Trucks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DataTable dt = this.GetData("select * from XLDrivers");
            rptMarkers.DataSource = dt;
            rptMarkers.DataBind();
        }
    }
    private DataTable GetData(string query)
    {
        string conString = ConfigurationManager.ConnectionStrings["DBProjectDatabaseConnectionString"].ConnectionString;
        SqlCommand cmd = new SqlCommand(query);
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;

                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    return dt;
                }
            }
        }
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
    protected void btn_Update_Click(object sender, EventArgs e)
    {
        Response.Redirect("R_Request.aspx");
    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("R_FinalRequest.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("R_Welcome.aspx");
    }
}