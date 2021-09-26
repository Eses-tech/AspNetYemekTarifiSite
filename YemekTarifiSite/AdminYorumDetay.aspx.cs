using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class AdminYorumDetay : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string _id = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            _id = Request.QueryString["yorumid"];

            if (Page.IsPostBack == false) { 
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd From Yorumlar inner join Yemekler on Yorumlar.YemekId=Yemekler.Id where YorumId=@n1",baglan.baglanti());
            komut.Parameters.AddWithValue("@n1", _id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TextBox1.Text = oku[0].ToString();
                TextBox2.Text = oku[1].ToString();
                TextBox3.Text = oku[2].ToString();
                TextBox4.Text = oku[3].ToString();
            }
            baglan.baglanti().Close();

            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut5 = new SqlCommand("Update Yorumlar set YorumOnay=@a1 where YorumId=@a2",baglan.baglanti());
            komut5.Parameters.AddWithValue("@a1", true);
            komut5.Parameters.AddWithValue("@a2",_id);
            komut5.ExecuteNonQuery();
            baglan.baglanti().Close();

        }
    }
}