using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Iletisim : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Mesajlar (Baslik,Mail,Mesaj,MesajGonderen) values (@m1,@m2,@m3,@m4)",baglan.baglanti());
            komut.Parameters.AddWithValue("@m1",TextBox3.Text);
            komut.Parameters.AddWithValue("@m2",TextBox2.Text);
            komut.Parameters.AddWithValue("@m3", TextBox4.Text);
            komut.Parameters.AddWithValue("@m4",TextBox1.Text);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();

            Response.Redirect("Iletisim.aspx");

            

        }
    }
}