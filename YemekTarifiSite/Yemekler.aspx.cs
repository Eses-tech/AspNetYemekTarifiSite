﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
            Panel4.Visible = false;

            SqlCommand komut = new SqlCommand("Select * from Yemekler",baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}