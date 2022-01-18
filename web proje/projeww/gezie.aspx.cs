using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace projeww
{
    public partial class gezie : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        string ka;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            ka = Session["ka"].ToString();
            tbka.Text = ka;
        }

        protected void bkaydet_Click(object sender, EventArgs e)
        {
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into geziler (ka,tarih,sehir,kategori,baslik,icerik)values(@ka,@tarih,@seh,@kat,@bas,@ic)";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@ka", ka);
            cmd.Parameters.AddWithValue("@tarih", tarih.SelectedDate);
            cmd.Parameters.AddWithValue("@seh", tbsehir.Text);
            cmd.Parameters.AddWithValue("@kat", dlkat.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@bas", tbbaslik.Text);
            cmd.Parameters.AddWithValue("@ic", tbicerik.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Geziniz Başarıyla Kaydedildi..";
        }

        protected void biptal_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("anasayfa.aspx");
        }
    }
}