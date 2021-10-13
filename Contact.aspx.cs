
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
namespace try1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSend_Click(object sender, EventArgs e)
        {
            using (MailMessage mm = new MailMessage(txtAccountID.Text, txtTo.Text))
            {
                if (fuAttachment.HasFile)
                {
                    string attachmentFileName = Path.GetFileName(fuAttachment.PostedFile.FileName);
                    mm.Attachments.Add(new Attachment(fuAttachment.PostedFile.InputStream, attachmentFileName));
                }

                mm.To.Add(txtTo.Text);
                mm.Subject = txtSubject.Text;
                mm.Body = txtBody.Text;
                //mm.IsBodyHtml = false; //for Gmail
                mm.IsBodyHtml = true; //for Gmail
                mm.Priority = MailPriority.Normal;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential netwkCred = new NetworkCredential(txtAccountID.Text, txtAccountPwd.Text);
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = netwkCred;
                smtp.Port = 587;
                //smtp.Port = 465;
                try
                {
                    smtp.Send(mm);
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('email sent!');", true);
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Exception caught in SendMail(): {0}", ex.ToString());
                }


            }
        }
    }
}