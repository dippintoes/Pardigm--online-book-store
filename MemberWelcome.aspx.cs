using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace try1
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Label2.Text = "Hello, " + Session["username"].ToString();



            }
            else
            {
                Response.Redirect("MembershipRegister.aspx");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("discount.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ebook.aspx");
        }
    }
}