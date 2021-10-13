using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace try1
{
    public partial class categories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["cat"] != null)

            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx?cat=Comic");

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx?cat=Romance");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx?cat=GRE");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx?cat=CAT");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx?cat=Thriller");
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx?cat=Horror");
        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx?cat=Biography");
        }
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx?cat=Technology");
        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx?cat=Self Help");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx?cat=Travel");
        }
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categories.aspx?cat=Movie - Tie - ins");
        }
    }
}