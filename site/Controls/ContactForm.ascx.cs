using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; //Provides access to the File class for reading the file
using System.Net.Mail; //Provides access to varius mail related classes

public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /* Server Side Validation Event Handelers */
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (!string.IsNullOrEmpty(PhoneHomeTextBox.Text) || !string.IsNullOrEmpty(PhoneBusinessTextBox.Text))
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    protected void SendButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
            string mailBody = File.ReadAllText(fileName);

            mailBody = mailBody.Replace("##Name##", NameTextBox.Text);
            mailBody = mailBody.Replace("##Email##", EmailAddressTextBox.Text);
            mailBody = mailBody.Replace("##HomePhone##", PhoneHomeTextBox.Text);
            mailBody = mailBody.Replace("##BusinessPhone##", PhoneBusinessTextBox.Text);
            mailBody = mailBody.Replace("##Comments##", CommentsTextBox.Text);

            MailMessage myMessage = new MailMessage();
            myMessage.Subject = "Response from web site";
            myMessage.Body = mailBody;

            myMessage.From = new MailAddress("noelkiuk1@dodo.com.au", "Noel Sender");
            myMessage.To.Add(new MailAddress("noelkiuk1@dodo.com.au", "Noel Reciver"));

            SmtpClient mySmptClient = new SmtpClient();
            //TODO add an exception here if the email smtp clinet is empty, or not set up correctly
            mySmptClient.Send(myMessage);

            Message.Visible = true;
            MessageSentPara.Visible = true; // makes the text paragraph visible when the form is submitted and email message is sent
            FormTable.Visible = false;
            //Emulate long delay for UpdateProgress controle (Please Wait..)
            System.Threading.Thread.Sleep(5000);
        }
    }
}