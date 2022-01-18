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
    public partial class adminhakkımızda : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        int id;
        void vericek()
        {
            con.Open();
            string sec = "select * from footer";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "footer");
            GridView1.DataSource = ds.Tables["footer"];
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
            tbbaslik.Text = tbicerik.Text = "";
            
        }

        protected void bkaydet_Click(object sender, EventArgs e)
        {
            int kayno = GridView1.SelectedIndex;
            if (kayno >= 0)
            {
                con.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = con;
                if (Session["yenimi"].ToString() == "true")
                    cmd.CommandText = "insert into footer (baslik,icerik)values(@bas,@ic)";
                else
                    cmd.CommandText = "update footer set baslik=@bas,icerik=@ic where id=@id";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@bas", tbbaslik.Text);
                cmd.Parameters.AddWithValue("@ic", tbicerik.Text);
                cmd.Parameters.AddWithValue("@id", tbid.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                vericek();
                Session["yenimi"] = "false";


            }
            else Response.Write("<script lang='JavaScript'>alert('Kayıt Seçin');</script>");
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            string sec = "select * from footer where id=" + GridView1.SelectedValue;
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "footer");
            tbid.Text = ds.Tables["footer"].Rows[0]["id"].ToString();
            tbbaslik.Text = ds.Tables["footer"].Rows[0]["baslik"].ToString();
            tbicerik.Text = ds.Tables["footer"].Rows[0]["icerik"].ToString();
            con.Close();
            Session["yenimi"] = "false";
        }

        protected void bsil_Click(object sender, EventArgs e)
        {
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = con;
            cmd.CommandText = "delete from footer where id=@id";
            cmd.Parameters.AddWithValue("@id", int.Parse(tbid.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            vericek();
        }
    }
}