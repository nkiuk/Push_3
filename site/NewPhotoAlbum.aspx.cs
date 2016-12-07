﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using PlanetWroxModel;

public partial class NewPhotoAlbum : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void EntityDataSource1_Inserted(object sender, EntityDataSourceChangedEventArgs e)
    {
        PhotoAlbum myPhotoAlbum = (PhotoAlbum)e.Entity;
        Response.Redirect(string.Format("ManagePhotoAlbum.aspx?PhotoAlbumId{0}", myPhotoAlbum.Id.ToString()));
    }
}