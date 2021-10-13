using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace try1
{
    public partial class ebook : System.Web.UI.Page
    {
        public string query, constr;
        public SqlCommand com;
        public SqlConnection con;

        public void connection()
        {

            constr = ConfigurationManager.ConnectionStrings["EBOOK"].ToString();
            con = new SqlConnection(constr);
            con.Open();

        }
        protected void Page_Load(object sender, EventArgs e)
        {

            Label2.Visible = false;
        }
        protected void Button2_Click(object sender, EventArgs e)
            {
                connection();
                query = "Select *from PDFFiles";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();


            }
            protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
            {
                connection();
                SqlCommand com = new SqlCommand("select Name,type,data from PDFFiles where id=@id", con);
                com.Parameters.AddWithValue("id", GridView1.SelectedRow.Cells[1].Text);
                SqlDataReader dr = com.ExecuteReader();

                if (dr.Read())
                {
                    Response.Clear();
                    Response.Buffer = true;

                    Response.ContentType = dr["type"].ToString();
                    Response.AddHeader("content-disposition", "attachment;filename=" + dr["Name"].ToString());
                    Response.Charset = "";
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.BinaryWrite((byte[])dr["data"]);
                    Response.End();
                }


            }
        
    }
}