using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Managment_Reviews : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {


    }

    // Demonstrates how to call custom methods in Code Behind during data binding.
    // Method convert incoming value to boolean and returns Yes or No depanding on the value of the column
    protected string GetBooleanText(object booleanValue) // passes a object e.g 'Authorize' column
    {
        bool authorized = (bool)booleanValue; // convert incoming value to boolean
        if(authorized)
        {
            return "Yes";
        }
        else
        {
            return "No";
        }
    }
}