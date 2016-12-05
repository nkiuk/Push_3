using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for NameService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script / clinet side script code, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService] // to mark the service as callable by client-side script

public class NameService : System.Web.Services.WebService
{

    public NameService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

     [WebMethod]
    public string HelloWorld(string yourName)
    {
        return string.Format("Hello {0}", yourName);
    }

}
