using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string islem = "";
        string _id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false) { 
            _id = Request.QueryString["yorumid"];
            islem = Request.QueryString["islem"];
            SqlCommand komut = new SqlCommand("Select * from Yorumlar where YorumOnay=1",baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            SqlCommand komut2 = new SqlCommand("Select * from Yorumlar where YorumOnay=0",baglan.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();

            if (islem == "sil")
            {
                SqlCommand komut7 = new SqlCommand("Delete from Yorumlar where YorumId=@m1", baglan.baglanti());
                komut7.Parameters.AddWithValue("@m1", _id);
                komut7.ExecuteNonQuery();
                baglan.baglanti().Close();


            }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}