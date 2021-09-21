using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class TarifPaylas : System.Web.UI.Page
    {
        SqlBaglanti baglan = new SqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tarifler (TarifAd,TarifMalzeme,TarifYapim,TarifResim,TarifGonderen,TarifGonderenMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", TxtTarifMalzeme.Text);
            komut.Parameters.AddWithValue("@t3",TxtTarifYapim.Text);
            komut.Parameters.AddWithValue("@t4",FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5",TxtTarifGonderen.Text);
            komut.Parameters.AddWithValue("@t6",TxtTarifGonderenMail.Text);
            komut.ExecuteNonQuery();
            baglan.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır..");

            
        }
    }
}