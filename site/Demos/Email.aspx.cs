using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demos_Email : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Test Message";
        myMessage.Body = "Hello world, from Planet Wrox";
        myMessage.From = new MailAddress("noelkiuk1@dodo.com.au", "Noel Sender");
        myMessage.To.Add(new MailAddress("noelkiuk1@dodo.com.au", "Noel Reciver"));

        SmtpClient mySmptClient = new SmtpClient();
        mySmptClient.Send(myMessage);
    }
}