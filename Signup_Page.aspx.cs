using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;


public partial class Signup_Page : System.Web.UI.Page
{
    DataClassesDataContext _mycontext = new DataClassesDataContext();
  
    int flag;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    private int check(String username)
    {
        if (txt_Username.Text != "" || txt_Username.Text != null)
        {
            GridView myunamegrid = new GridView();
            myunamegrid.DataSource = _mycontext.CheckIt(txt_Username.Text);
            myunamegrid.DataBind();

            if (myunamegrid.Rows.Count > 0)
            {
                lblreglabel.Text = "Username Already Exist...";
                flag = 1;
            }
            else
            {
                lblreglabel.Text = "";
                flag = 0;
            }

        }
        return flag;

    }

    private int check_email(String email_ID)
    {
        if (txt_EmailID.Text != "" || txt_EmailID.Text != null)
        {
            GridView myemailgrid = new GridView();
            myemailgrid.DataSource = _mycontext.CheckEmail(txt_EmailID.Text);
            myemailgrid.DataBind();

            if (myemailgrid.Rows.Count > 0)
            {
                lblemail.Text = "Email ID Already Exist...";
                flag = 1;
            }
            else
            {
                lblreglabel.Text = "";
                flag = 0;
            }

        }
        return flag;
    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        int checkflag = check(txt_Username.Text);
        if (checkflag == 0)
        {
            _mycontext.InsertUserLogin(txt_Fname.Text, txt_Lname.Text, txt_Username.Text, txt_Phonenumber.Text,ddl_role.Text, txt_EmailID.Text, txt_Password.Text, txt_Cardnumber.Text,txt_CVVNumber.Text,txt_expdate.Text,txt_postalcode.Text);
            txt_Fname.Text = "";
            txt_Lname.Text = "";
            txt_Username.Text = "";
            txt_Phonenumber.Text = "";
            ddl_role.Text = "";
            txt_EmailID.Text = "";
            txt_Password.Text = "";
            txt_Cardnumber.Text = "";
            txt_CVVNumber.Text = "";
            txt_expdate.Text = "";
            txt_postalcode.Text = "";
        }


        else
        {
            lblreglabel.Text = "Username Already Exists...";
        }

       
    }
    protected void lbtn_signin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}
