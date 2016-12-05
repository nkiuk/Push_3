using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_Frontend : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //code that preselects the correct item in the list again when the page loads
        if (!Page.IsPostBack)
        {
            string selectedTheme = Page.Theme;
            HttpCookie preferedTheme = Request.Cookies.Get("PreferedTheme");
            if (preferedTheme != null)
            {
                selectedTheme = preferedTheme.Value;
            }
            if (!string.IsNullOrEmpty(selectedTheme) && ThemeList.Items.FindByValue(selectedTheme) != null)
            {
                ThemeList.Items.FindByValue(selectedTheme).Selected = true;
                switch (Page.Theme.ToLower())
                {
                    case "darkgray":
                        Menu1.Visible = false;
                        TreeView1.Visible = true;
                        break;
                    default:
                        Menu1.Visible = true;
                        TreeView1.Visible = false;
                        break;
                }
            }

        }
    }
    protected void ThemeList_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie preferrdTheme = new HttpCookie("PreferredTheme");
        preferrdTheme.Expires = DateTime.Now.AddMonths(3);
        preferrdTheme.Value = ThemeList.SelectedValue;
        Response.Cookies.Add(preferrdTheme);
        Response.Redirect(Request.Url.ToString());
    }
}
