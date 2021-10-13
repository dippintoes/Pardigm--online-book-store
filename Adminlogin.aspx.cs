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
    public partial class Adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (e.Authenticated)
            {
                Response.Redirect("Adminopt.aspx");
            }
            if (ValidateUser(Login1.UserName, Login1.Password))
            {
                Response.Redirect("Adminopt.aspx");
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
            String myquery = "select * from AdminLogin";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String name;
            String pass;
            name = ds.Tables[0].Rows[0]["name"].ToString();
            pass = ds.Tables[0].Rows[0]["pass"].ToString();
            scon.Close();
            if (name == username && pass == password)
            {
                Session["username"] = name;
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