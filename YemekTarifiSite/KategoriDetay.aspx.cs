using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        string kategori_Id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategori_Id = Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("Select * from Yemekler where KategoriId=@k1",baglan.baglanti());
            komut.Parameters.AddWithValue("@k1", kategori_Id);
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
        }
    }
}