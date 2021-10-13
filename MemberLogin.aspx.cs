using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace try1
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (e.Authenticated)
            {
                Response.Redirect("MemberWelcome.aspx");
            }
            if (ValidateUser(Login1.UserName, Login1.Password))
            {
                Response.Redirect("MemberWelcome.aspx");
            }
            else
            {
                e.Authenticated = false;
            }
        }
        private bool ValidateUser(String username, String password)
        {
            bool status;
            String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\EBOOK.mdf;Integrated Security=True";

            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select username, password from MemberLogin";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String mname;
            String mpass;
            mname = ds.Tables[0].Rows[0]["username"].ToString();
            mpass = ds.Tables[0].Rows[0]["password"].ToString();
            scon.Close();
            if (mname == username && mpass == password)
            {
                Session["username"] = mname;
                status = true;
            }
            else
            {
                status = false;
            }
            return status;
        }
    }
}