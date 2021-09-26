using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class AdminMesajDetay : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string _id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false) { 
                _id = Request.QueryString["mesajid"];
                SqlCommand komut = new SqlCommand("Select * from Mesajlar where Id=@a1", baglan.baglanti());
                komut.Parameters.AddWithValue("@a1",_id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[4].ToString();
                    TextBox2.Text = oku[2].ToString();
                    TextBox3.Text = oku[3].ToString();
                    TextBox4.Text = oku[1].ToString();
                }
                baglan.baglanti();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}