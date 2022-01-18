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
    public partial class unuttum : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        OleDbDataReader dr;
        void vericek()
        {
            string sec = "select * from kullaniciler";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            ds.Clear();
            da.Fill(ds, "kullaniciler");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ysifrediv.Visible = false;
            ysifredogrudiv.Visible = false;
            btnkayit.Visible = false;
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            vericek();
        }

        protected void btntmm_Click(object sender, EventArgs e)
        {

            OleDbCommand cmd = new OleDbCommand();
            if (con.State == ConnectionState.Closed) con.Open();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM kullaniciler where ka='" + tbka.Text + "' AND Tc='" + tbtc.Text + "'";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                ysifrediv.Visible = true;
                ysifredogrudiv.Visible = true;
                btnkayit.Visible = true;

            }
            else
                Response.Write("<script lang='Javascript'>alert('Bilgilerinizi kontrol ediniz..');</script>");
            vericek();

        }

        protected void btnkayit_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd1 = new OleDbCommand();
            if (con.State == ConnectionState.Closed) con.Open();
            cmd1.Connection = con;
            cmd1.CommandText = "update kullaniciler set sifre=@sf where Tc=@tc";
            cmd1.Parameters.AddWithValue("@sf", tbsi.Text);
            cmd1.Parameters.AddWithValue("@tc", tbtc.Text);
            cmd1.ExecuteNonQuery();
            Response.Redirect("kullanicigiris.aspx");
        }
    }
}