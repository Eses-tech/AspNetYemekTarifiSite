using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSite
{
    public partial class AdminTarifDetay : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            id = Request.QueryString["tarifid"];
            if (Page.IsPostBack == false) { 
            SqlCommand komut = new SqlCommand("Select * from Tarifler where Id=@p1;",baglan.baglanti());
            komut.Parameters.AddWithValue("@p1",id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TextBox1.Text = oku[1].ToString();
                TextBox2.Text = oku[2].ToString();
                TextBox3.Text = oku[3].ToString();
                TextBox4.Text = oku[5].ToString();
                TextBox5.Text = oku[6].ToString();
            }
            baglan.baglanti().Close();
            }

            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("Select * from Kategoriler", baglan.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Id";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tarifler set TarifDurum=1 where Id=@b1",baglan.baglanti());
            komut.Parameters.AddWithValue("@b1",id);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();


            SqlCommand komut3 = new SqlCommand("insert into Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@s1,@s2,@s3,@s4)",baglan.baglanti());
            komut3.Parameters.AddWithValue("@s1",TextBox1.Text);
            komut3.Parameters.AddWithValue("@s2",TextBox2.Text);
            komut3.Parameters.AddWithValue("@s3",TextBox3.Text);
            
            komut3.Parameters.AddWithValue("@s4",DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            baglan.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("update Kategoriler set KategoriAdet=KategoriAdet+1 where Id=@g1", baglan.baglanti());
            komut2.Parameters.AddWithValue("@g1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();
        }
    }
}