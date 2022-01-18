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
    public partial class goruntu : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        string baslik,gelen;
        public string tutsehir;
        public string tutbaslik;
        public string tutkategori;
        public string iceriktut;
        public string geri;
        protected void Page_Load(object sender, EventArgs e)
        {    gelen=Session["nere"].ToString();
           
            if ( gelen == "0")
            {
                con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
                baslik = Session["baslik"].ToString();
                con.Open();
                string sec = "select * from geziler where baslik like '%" + baslik + "%'";
                OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
                da.Fill(ds, "geziler");
                if (ds.Tables["geziler"].Rows.Count > 0)
                {
                    tutsehir = ds.Tables["geziler"].Rows[0]["sehir"].ToString();
                    tutkategori = ds.Tables["geziler"].Rows[0]["kategori"].ToString();
                    tutbaslik = ds.Tables["geziler"].Rows[0]["baslik"].ToString();
                    iceriktut = ds.Tables["geziler"].Rows[0]["icerik"].ToString();
                }
                geri = "giris.aspx";
            }
            else if(gelen =="1")
            {
                con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
                baslik = Session["id"].ToString();
                con.Open();
                string sec = "select * from geziler where id like '%" + baslik + "%'";
                OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
                da.Fill(ds, "geziler");
                if (ds.Tables["geziler"].Rows.Count > 0)
                {
                    tutsehir = ds.Tables["geziler"].Rows[0]["sehir"].ToString();
                    tutkategori = ds.Tables["geziler"].Rows[0]["kategori"].ToString();
                    tutbaslik = ds.Tables["geziler"].Rows[0]["baslik"].ToString();
                    iceriktut = ds.Tables["geziler"].Rows[0]["icerik"].ToString();
                }
                geri = "paylasim.aspx";
            }
            else
            {
                con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
                baslik = Session["id1"].ToString();
                con.Open();
                string sec = "select * from geziler where id like '%" + baslik + "%'";
                OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
                da.Fill(ds, "geziler");
                if (ds.Tables["geziler"].Rows.Count > 0)
                {
                    tutsehir = ds.Tables["geziler"].Rows[0]["sehir"].ToString();
                    tutkategori = ds.Tables["geziler"].Rows[0]["kategori"].ToString();
                    tutbaslik = ds.Tables["geziler"].Rows[0]["baslik"].ToString();
                    iceriktut = ds.Tables["geziler"].Rows[0]["icerik"].ToString();
                }
                geri = "anasayfa.aspx";
            }
        }
    }
}