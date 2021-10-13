using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

namespace try1
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\EBOOK.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into MemberLogin values(@a, @b, @c,@d)", con);
            cmd.Parameters.AddWithValue("a", TextBox1.Text);
            cmd.Parameters.AddWithValue("b", TextBox2.Text);
            cmd.Parameters.AddWithValue("c", TextBox4.Text);
            cmd.Parameters.AddWithValue("d", TextBox6.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Payment.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}