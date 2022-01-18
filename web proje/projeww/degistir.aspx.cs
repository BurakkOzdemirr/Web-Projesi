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
    public partial class degistir : System.Web.UI.Page
    {
        string id;
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        void vericek()
        {
            con.Open();
            string sec = "select * from geziler where id=" +id;
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "geziler");
            dlkat.SelectedItem.Text = ds.Tables["geziler"].Rows[0]["kategori"].ToString();
            tbsehir.Text = ds.Tables["geziler"].Rows[0]["sehir"].ToString();
            tbbaslik.Text = ds.Tables["geziler"].Rows[0]["baslik"].ToString();
            tbicerik.Text = ds.Tables["geziler"].Rows[0]["icerik"].ToString();
            con.Close();
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Session["id"].ToString();
            lbid.Text = id;
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            if(!IsPostBack)
            vericek();

        }

        protected void biptal_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("paylasim.aspx");
        }

        protected void bkaydet_Click(object sender, EventArgs e)
        {
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = con;
            cmd.CommandText = "update geziler set sehir=@seh,kategori=@kat,baslik=@bas,icerik=@ic where id="+lbid.Text;
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@seh", tbsehir.Text);
            cmd.Parameters.AddWithValue("@kat", dlkat.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@bas", tbbaslik.Text);
            cmd.Parameters.AddWithValue("@ic", tbicerik.Text);
            cmd.Parameters.AddWithValue("@id", lbid.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.Response.Redirect("paylasim.aspx");
        }
    }
}