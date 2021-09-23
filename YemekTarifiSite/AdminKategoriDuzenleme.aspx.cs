using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class AdminKategoriDetay : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string kategori_Id="";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategori_Id = Request.QueryString["Kategoriid"];

            if (Page.IsPostBack == false) { 
            SqlCommand komut = new SqlCommand("Select * from Kategoriler where Id=@w1",baglan.baglanti());
            komut.Parameters.AddWithValue("@w1",kategori_Id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TextBox1.Text = oku[1].ToString();
                TextBox2.Text = oku[2].ToString();
            }
            baglan.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update Kategoriler set KategoriAd=@u1,KategoriAdet=@u2 where Id=@u3",baglan.baglanti());
            komut2.Parameters.AddWithValue("@u1",TextBox1.Text);
            komut2.Parameters.AddWithValue("@u2", TextBox2.Text);
            komut2.Parameters.AddWithValue("@u3",kategori_Id);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();

        }
    }
}