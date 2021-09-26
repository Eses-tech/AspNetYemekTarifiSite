using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["mesajid"];
                islem = Request.QueryString["islem"];
            }

             
            SqlCommand komut = new SqlCommand("Select * from Mesajlar",baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete from Mesajlar where Id=@p", baglan.baglanti());
                komut2.Parameters.AddWithValue("@p", id);
                komut2.ExecuteNonQuery();
                baglan.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;

        }
    }
}