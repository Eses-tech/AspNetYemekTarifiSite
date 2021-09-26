using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            Panel2.Visible = false;
            Panel4.Visible = false;

            SqlCommand komut = new SqlCommand("Select * from Yemekler",baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            SqlCommand komut2 = new SqlCommand("Select * from Kategoriler",baglan.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["yemekid"];
                islem = Request.QueryString["islem"];
                DropDownList2.DataTextField = "KategoriAd";
                DropDownList2.DataValueField = "Id";
                DropDownList2.DataSource = oku2;
                DropDownList2.DataBind();

                if (islem == "sil")
                {
                    SqlCommand komut7 = new SqlCommand("Delete from Yemekler where Id=@m1",baglan.baglanti());
                    komut7.Parameters.AddWithValue("@m1", id);
                    komut7.ExecuteNonQuery();
                    baglan.baglanti().Close();


                }
            }
            
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand kmt = new SqlCommand("insert into Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriId) values (@k1,@k2,@k3,@k4)",baglan.baglanti());
            kmt.Parameters.AddWithValue("@k1",TextBox1.Text);
            kmt.Parameters.AddWithValue("@k2",TextBox2.Text);
            kmt.Parameters.AddWithValue("@k3",TextBox3.Text);
            kmt.Parameters.AddWithValue("@k4",DropDownList2.SelectedValue);
            kmt.ExecuteNonQuery();
            baglan.baglanti().Close();

            SqlCommand komut2 = new SqlCommand("update Kategoriler set KategoriAdet=KategoriAdet+1 where Id=@g1",baglan.baglanti());
            komut2.Parameters.AddWithValue("@g1",DropDownList2.SelectedValue);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();
        }
    }
}