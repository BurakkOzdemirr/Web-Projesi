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
    public partial class adminiletisim : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        OleDbCommand cmd = new OleDbCommand();
        string id= (1).ToString() ;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            if (!IsPostBack)
            {
                con.Open();
                string sec = "select * from iletisim where id=" + id;
                OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
                da.Fill(ds, "iletisim");
                tbe.Text = ds.Tables["iletisim"].Rows[0]["eposta"].ToString();
                tbtn.Text = ds.Tables["iletisim"].Rows[0]["telefon"].ToString();
                tbadres.Text = ds.Tables["iletisim"].Rows[0]["adres"].ToString();
                con.Close();
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = con;
            string sec = "select * from iletisim";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds,"iletisim");
                if(ds.Tables["iletisim"].Rows.Count > 0)
                    cmd.CommandText = "update iletisim set eposta=@e,telefon=@tel,adres=@adres where id=@id";
                else
                    cmd.CommandText = "insert into iletisim(eposta,telefon,adres)values(@e,@tel,@adres)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@e", tbe.Text);
                cmd.Parameters.AddWithValue("@tel", tbtn.Text);
                cmd.Parameters.AddWithValue("@adres", tbadres.Text);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                con.Close();
        }
    }
}