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
    public partial class kullaniciler : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        string tc;
        void vericek()
        {
            con.Open();
            string sec = "select * from kullaniciler";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "kullaniciler");
            GridView1.DataSource = ds.Tables["kullaniciler"];
            GridView1.DataBind();
            con.Close();
           
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            if(!IsPostBack)
                vericek();
        }

        protected void bsil_Click(object sender, EventArgs e)
        {
            int kayno = GridView1.SelectedIndex;
            if (kayno >= 0)
            {
                con.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = con;
                cmd.CommandText = "delete from kullaniciler where Tc=@tc";
                cmd.Parameters.AddWithValue("@tc", tbtc.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                vericek();


            }
            else Response.Write("<script lang='JavaScript'>alert('Kayıt Seçin');</script>");
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            tbtc.Text = row.Cells[1].Text;
            
            
        }
    }
}