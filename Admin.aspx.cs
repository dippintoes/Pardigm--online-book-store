using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace try1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }

        protected void GridViewAdmin_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

            if (e.Exception != null)
            {
                lblError.Text =
                    "A database error has occurred. " +
                    "Message: " + e.Exception.Message;
                e.ExceptionHandled = true;
                e.KeepInEditMode = true;
            }
            else if (e.AffectedRows == 0)
            {
                lblError.Text =
                    "Another user may have updated that category. " +
                    "Please try again.";
            }


        }
        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var parameters = SqlDataSource1.InsertParameters;
                parameters["isbnno"].DefaultValue = txtisbnno.Text;
                parameters["title"].DefaultValue = txttitle.Text;
                parameters["price"].DefaultValue = txtprice.Text;
                parameters["author"].DefaultValue = txtauthor.Text;
                parameters["Category"].DefaultValue = DropDownList1.Text;
                parameters["imageurl"].DefaultValue = txtimageurl.Text;
                parameters["badge"].DefaultValue = txtbadge.Text;
                parameters["description"].DefaultValue = txtdescription.Text;
                parameters["genre"].DefaultValue = txtgenre.Text;


                try
                {
                    SqlDataSource1.Insert();
                    txtisbnno.Text = "";
                    txttitle.Text = "";
                    txtprice.Text = "";
                    txtauthor.Text = "";
                    txtimageurl.Text = "";
                    txtbadge.Text = "";
                    txtdescription.Text = "";
                    txtgenre.Text = "";

                }
                catch (Exception ex)
                {
                    lblError.Text = ex.Message;
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}