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
    public partial class paylasim : System.Web.UI.Page
    {
        string ka;
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        void vericek()
        {
            con.Open();
            string sec = "select * from geziler where ka like '%" + ka + "%'";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "geziler");
            GridView1.DataSource = ds.Tables["geziler"];
            GridView1.DataBind();
            con.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            ka = Session["ka"].ToString();
           if(!IsPostBack)
            vericek();
        }

        protected void bgeri_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("anasayfa.aspx");
        }

        protected void bsil_Click(object sender, EventArgs e)
        {
            int kayno = GridView1.SelectedIndex;
            if (kayno >= 0)
            {
                con.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = con;
                cmd.CommandText = "delete from geziler where id=@id";
                cmd.Parameters.AddWithValue("@id", int.Parse(tbid.Text));
                cmd.ExecuteNonQuery();
                con.Close();
                vericek();

            }
            else Response.Write("<script lang='JavaScript'>alert('Kayıt Seçin');</script>");
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            string sec = "select * from geziler where id=" + GridView1.SelectedValue;
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "geziler");
            tbid.Text= ds.Tables["geziler"].Rows[0]["id"].ToString();
            con.Close();
            Session["id"] = tbid.Text;
        }

        protected void bdegistir_Click(object sender, EventArgs e)
        {
            int kayno = GridView1.SelectedIndex;
            if (kayno >= 0)
            {
                Page.Response.Redirect("degistir.aspx");

            }
            else Response.Write("<script lang='JavaScript'>alert('Kayıt Seçin');</script>");
            
        }

        protected void bgoruntule_Click(object sender, EventArgs e)
        {
            int kayno = GridView1.SelectedIndex;
            if (kayno >= 0)
            {
                string a = "1";
                Session["nere"] = a;
                Page.Response.Redirect("goruntu.aspx");

            }
            else Response.Write("<script lang='JavaScript'>alert('Kayıt Seçin');</script>");
            
            
        }
    }
}