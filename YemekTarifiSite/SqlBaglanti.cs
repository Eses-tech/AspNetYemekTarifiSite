using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public class SqlBaglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection bgl = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=YemekTarifleri;Integrated Security=True");
            bgl.Open();
            return bgl;
        }
    }
}