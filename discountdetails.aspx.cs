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
    public partial class WebForm11 : System.Web.UI.Page
    {
        static Int64 grandtotal;
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["addproduct"].ToString() == "true")
            {
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("isbnno");
                dt.Columns.Add("title");
                dt.Columns.Add("imageurl");
                dt.Columns.Add("price");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\EBOOK.mdf;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from books where isbnno=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["isbnno"] = ds.Tables[0].Rows[0]["isbnno"].ToString();
                        dr["title"] = ds.Tables[0].Rows[0]["title"].ToString();
                        dr["imageurl"] = ds.Tables[0].Rows[0]["imageurl"].ToString();
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        grandtotal = Convert.ToInt64(ds.Tables[0].Rows[0]["price"].ToString());
                        /*try
                        {
                            grandtotal = Convert.ToInt64(ds.Tables[0].Rows[0]["price"].ToString());
                        }
                        catch
                        {
                            grandtotal = 50;
                        }
                        */

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                      GridView1.FooterRow.Cells[4].Text = "Total Amount";
                       GridView1.FooterRow.Cells[5].Text = grandtotal.ToString();
                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\EBOOK.mdf;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from books where isbnno=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["isbnno"] = ds.Tables[0].Rows[0]["isbnno"].ToString();
                        dr["title"] = ds.Tables[0].Rows[0]["title"].ToString();
                        dr["imageurl"] = ds.Tables[0].Rows[0]["imageurl"].ToString();

                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        grandtotal = grandtotal + Convert.ToInt64(ds.Tables[0].Rows[0]["price"].ToString());
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[4].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal.ToString();
                    }
                }


            }
            else
            {
                DataTable dt;
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (dt != null)
                {
                  GridView1.FooterRow.Cells[4].Text = "Total Amount";
                    GridView1.FooterRow.Cells[5].Text = grandtotal.ToString();
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int discount;
            int maxdiscount;
            Int64 finalprice;
            Int64 discountprice;

            String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\EBOOK.mdf;Integrated Security=True";

            String myquery = "Select * from discountmembers where couponcode='" + TextBox1.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label3.Text = "Coupon Code " + TextBox1.Text + " Applied Successfully";

                discount = Convert.ToInt16(ds.Tables[0].Rows[0]["discount"].ToString());
                maxdiscount = Convert.ToInt16(ds.Tables[0].Rows[0]["maxdiscount"].ToString());
                discountprice = (grandtotal * discount) / 100;
                if (discountprice > maxdiscount)
                {
                    discountprice = maxdiscount;
                }
                Label4.Text = discountprice.ToString() + " ( " + discount + "% ) Maximum Upto Rs." + maxdiscount;
                finalprice = grandtotal - discountprice;
                Label5.Text = "Rs." + grandtotal.ToString();
                Label6.Text = "Rs." + finalprice.ToString();
            }
            else
            {
                Label3.Text = "Invalid Coupon Code Applied : Not Exist";
                Label5.Text = "";
                Label4.Text = "";
                Label6.Text = "";

            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_rowdeleting(object sender, GridViewDeleteEventArgs e)
        {

        }


    }
}