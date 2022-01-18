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
    public partial class adminbilgi : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        int id;
        void vericek()
        {
            con.Open();
            string sec = "select * from bilgi";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "bilgi");
            GridView1.DataSource = ds.Tables["bilgi"];
            GridView1.DataBind();
            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            if (!IsPostBack)
            {
                vericek();
                Session["yenimi"] = "true";
            }

        }

        protected void byeni_Click(object sender, EventArgs e)
        {   
            Session["yenimi"] = "true";
            tbbaslik.Text = tbicerik.Text =tbid.Text= "";
            cbyayin.Checked = false;
        }

        protected void bkaydet_Click(object sender, EventArgs e)
        {
           
                con.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = con;
                if (Session["yenimi"].ToString() == "true")
                    cmd.CommandText = "insert into bilgi (baslik,icerik,tarih,yayinda)values(@bas,@ic,@tarih,@yayin)";
                else
                    cmd.CommandText = "update bilgi set baslik=@bas,icerik=@ic,tarih=@tarih,yayinda=@yayin where id=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@bas", tbbaslik.Text);
                cmd.Parameters.AddWithValue("@ic", tbicerik.Text);
                cmd.Parameters.AddWithValue("@tarih", tarih.SelectedDate);
                cmd.Parameters.AddWithValue("@yayin", cbyayin.Checked);
                cmd.Parameters.AddWithValue("@id", tbid.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                vericek();
                Session["yenimi"] = "false";


            
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            con.Open();
            string sec = "select * from bilgi where id=" + GridView1.SelectedValue;
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "bilgi");
            tbid.Text = ds.Tables["bilgi"].Rows[0]["id"].ToString();
            tbbaslik.Text = ds.Tables["bilgi"].Rows[0]["baslik"].ToString();
            tbicerik.Text = ds.Tables["bilgi"].Rows[0]["icerik"].ToString();
            tarih.SelectedDate = DateTime.Parse(ds.Tables["bilgi"].Rows[0]["tarih"].ToString());
            cbyayin.Checked = bool.Parse(ds.Tables["bilgi"].Rows[0]["yayinda"].ToString());
            con.Close();
            Session["yenimi"] = "false";
        }

        protected void biptal_Click(object sender, EventArgs e)
        {
            tbbaslik.Text = tbicerik.Text = "";
            
        }

        protected void bsil_Click(object sender, EventArgs e)
        {
            int kayno = GridView1.SelectedIndex;
            if (kayno >= 0)
            {
                con.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = con;
                cmd.CommandText = "delete from bilgi where id=@id";
                cmd.Parameters.AddWithValue("@id", int.Parse(tbid.Text));
                cmd.ExecuteNonQuery();
                con.Close();
                vericek();


            }
            else Response.Write("<script lang='JavaScript'>alert('Kayıt Seçin');</script>");
        }
    }
}