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
    public partial class bilgigoster : System.Web.UI.Page
    {
        public string tutbaslik;
        public StringBuilder tuticerik = new StringBuilder();
        void vericek()
        {
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            con.Open();
            DataSet ds = new DataSet();
            string sec = "select * from bilgi where yayinda="+"true";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "bilgi");
            Repeater1.DataSource = ds.Tables["bilgi"];
            Repeater1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            vericek();
            OleDbConnection baglanti = new OleDbConnection();
            baglanti.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            baglanti.Open();
            DataSet ds = new DataSet();
            string gelenid = Request.QueryString["id"].ToString();
            string sec = "select * from bilgi where id=" + gelenid;
            OleDbDataAdapter da = new OleDbDataAdapter(sec, baglanti);
            da.Fill(ds, "bilgi");
            if (ds.Tables["bilgi"].Rows.Count > 0)
            {
                tutbaslik = ds.Tables["bilgi"].Rows[0]["baslik"].ToString();
                tuticerik.Append(ds.Tables["bilgi"].Rows[0]["icerik"].ToString());
            }

        }
    }
}