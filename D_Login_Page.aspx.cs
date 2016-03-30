using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class D_Login_Page : System.Web.UI.Page
{
    DataClassesDataContext _mycontext = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void checklogin(string username, string password)
    {
        GridView Mylogingrid = new GridView();
        Mylogingrid.DataSource = _mycontext.CheckLogin(username, password);
        Mylogingrid.DataBind();
        if (Mylogingrid.Rows.Count > 0)
        {

            Session["Username"] = txt_Username.Text;
            if (Mylogingrid.Rows[0].Cells[1].Text == "T00808")
            {
                Response.Redirect("R_Welcome.aspx?Admin=" + txt_Username.Text);
            }
            else
            {
                Response.Redirect("D_Welcome.aspx?Username=" + txt_Username.Text + "&userID=" + Mylogingrid.Rows[0].Cells[0].Text);
            }
        }
        else
        {
            lbl_loginmsg.Text = "Invalid Username or Password...";
        }
    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        try
        {

            checklogin(txt_Username.Text, txt_Password.Text);
        }
        catch (Exception ex)
        {
            lbl_loginmsg.Text = "Invalid Username or Password...";
        }
    }
    protected void lbtn_signin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup_Page.aspx");
    }
}