﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

public partial class Reviews_All : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
            {
            var allReviews = from review in myEntities.Reviews
                            where review.Authorized == true
                            orderby review.CreateDateTime descending
                            select review;
            GridView1.DataSource = allReviews.ToList();
            GridView1.DataBind();
        }
    }
}