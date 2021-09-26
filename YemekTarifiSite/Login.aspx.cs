using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Login : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = TextBox1.Text;
            string password = TextBox2.Text;
            SqlCommand komut = new SqlCommand("Select * from Yoneticiler where YoneticiAd=@p1 and YoneticiSifre=@p2",baglan.baglanti());
            komut.Parameters.AddWithValue("@p1",TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {

                TextBox1.Text = oku[0].ToString();
                TextBox2.Text = oku[1].ToString();
                Response.Redirect("Kategoriler.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            


        }
    }
}