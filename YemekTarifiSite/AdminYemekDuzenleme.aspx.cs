using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class AdminYemekDuzenleme : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yemekid"];
            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("Select * from Yemekler where Id=@y1", baglan.baglanti());
                komut.Parameters.AddWithValue("@y1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBox1.Text = oku[2].ToString();
                    TextBox2.Text = oku[3].ToString();
                    TextBox3.Text = oku[4].ToString();
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

            FileUpload1.SaveAs(Server.MapPath("/resimler/"+FileUpload1.FileName));
            SqlCommand komut2 = new SqlCommand("update Yemekler set YemekAd=@u1,YemekMalzeme=@u2,YemekTarif=@u3,KategoriId=@u4,YemekResim=@u6 where Id=@u5", baglan.baglanti());
            komut2.Parameters.AddWithValue("@u1", TextBox1.Text);
            komut2.Parameters.AddWithValue("@u2", TextBox2.Text);
            komut2.Parameters.AddWithValue("@u3", TextBox3.Text);
            komut2.Parameters.AddWithValue("@u4", DropDownList1.SelectedValue);
            komut2.Parameters.AddWithValue("@u6", "~/resimler/" + FileUpload1.FileName);
            komut2.Parameters.AddWithValue("@u5", id);
            
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Yemekler set YemekDurum=0", baglan.baglanti());
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("update Yemekler set YemekDurum=1 where Id=@k1", baglan.baglanti());
            komut2.Parameters.AddWithValue("@k1", id);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();
        }
    }
}