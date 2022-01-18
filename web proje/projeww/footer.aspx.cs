using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Text;

namespace projeww
{
    public partial class footer : System.Web.UI.Page
    {
        public string tutbaslik;
        public StringBuilder tuticerik = new StringBuilder();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            OleDbConnection baglanti = new OleDbConnection();
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            baglanti.Open();
            DataSet ds = new DataSet();
            string gelenid = Request.QueryString["id"].ToString();
            string sec = "select * from footer where id=" + gelenid;
            OleDbDataAdapter da = new OleDbDataAdapter(sec, baglanti);
            da.Fill(ds, "footer");
            if (ds.Tables["footer"].Rows.Count > 0)
            {
                tutbaslik = ds.Tables["footer"].Rows[0]["baslik"].ToString();
                tuticerik.Append(ds.Tables["footer"].Rows[0]["icerik"].ToString());
            }
        }
    }
}