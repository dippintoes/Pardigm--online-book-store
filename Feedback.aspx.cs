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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Rating1_Click(object sender, AjaxControlToolkit.RatingEventArgs e)
        {
            Label3.Text = "You gave us" + " " + e.Value.ToString() + " " + " stars ";
            Label3.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write(@"<script language='javascript'>alert('Logegd out successfully!!! \n"  + " .');</script>");
        }
    }
}