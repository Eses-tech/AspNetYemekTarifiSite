using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string kategori_Id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                kategori_Id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("Select * from Kategoriler",baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komutSil = new SqlCommand("Delete from Kategoriler where Id=@b1",baglan.baglanti());
                komutSil.Parameters.AddWithValue("@b1",kategori_Id);
                komutSil.ExecuteNonQuery();
                baglan.baglanti().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Kategoriler (KategoriAd,KategoriResim) values (@s1,@s2)",baglan.baglanti());
            komut.Parameters.AddWithValue("@s1",TextBox1.Text);
            komut.Parameters.AddWithValue("@s2", FileUpload1.FileName);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            
            
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