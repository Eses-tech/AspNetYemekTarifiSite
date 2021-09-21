using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];
            SqlCommand komut = new SqlCommand("Select YemekAd from Yemekler where Id=@p1",baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader oku = komut.ExecuteReader();
            baglan.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("Select * from Yorumlar where YemekId=@p2",baglan.baglanti());
            komut2.Parameters.AddWithValue("@p2",yemekid);
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into Yorumlar (YorumAdSoyad,YorumMail,YorumIcerik,YemekId) values (@d1,@d2,@d3,@d4)",baglan.baglanti());
            komut3.Parameters.AddWithValue("@d1",TextBox1.Text);
            komut3.Parameters.AddWithValue("@d2", TextBox2.Text);
            komut3.Parameters.AddWithValue("@d3", TextBox3.Text);
            komut3.Parameters.AddWithValue("@d4",yemekid);
            komut3.ExecuteNonQuery();
            baglan.baglanti().Close();
        }
    }
}