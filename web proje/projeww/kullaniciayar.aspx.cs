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
    public partial class kullaniciayar : System.Web.UI.Page
    {
        string ka, tc;
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        OleDbDataReader dr;
        OleDbDataReader dr2;
        void vericek()
        {
            con.Open();
            string sec = "select * from kullaniciler where ka like '%" + ka + "%'";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "kullaniciler");
            tbtc.Text = ds.Tables["kullaniciler"].Rows[0]["Tc"].ToString();
            tbad.Text = ds.Tables["kullaniciler"].Rows[0]["ad"].ToString();
            tbso.Text = ds.Tables["kullaniciler"].Rows[0]["soyad"].ToString();
            tbka.Text = ds.Tables["kullaniciler"].Rows[0]["ka"].ToString();
            tbsifre.Text = ds.Tables["kullaniciler"].Rows[0]["sifre"].ToString();
            tbe.Text = ds.Tables["kullaniciler"].Rows[0]["email"].ToString();
            tbyas.Text = ds.Tables["kullaniciler"].Rows[0]["yas"].ToString();
            tc = tbtc.Text;
            con.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ka = Session["ka"].ToString();
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            if (!IsPostBack) vericek();

        }

        protected void bguncelle_Click(object sender, EventArgs e)
        {

            int kontrol = 0;
            string s = tbtc.Text;
            int u = s.Length;
            if (u != 11)
                Response.Write("<script lang='Javascript'>alert('TC kimlik numarasını yanlış girdiniz.');</script>");
            else
            {
                con.Open();
                OleDbCommand cmd = new OleDbCommand();
                OleDbCommand cmd1 = new OleDbCommand();
                OleDbCommand cmd2 = new OleDbCommand();
                cmd.Connection = con;
                cmd1.Connection = con;
                cmd2.Connection = con;
                cmd1.CommandText = "Select * from kullaniciler where Tc=@tc1";
                cmd2.CommandText = "Select * from kullaniciler where ka=@ka";
                cmd2.Parameters.AddWithValue("@ka", tbka.Text);
                cmd1.Parameters.AddWithValue("@tc1", tbtc.Text);
                dr2 = cmd2.ExecuteReader();
                dr = cmd1.ExecuteReader();
                if (dr.Read())
                {
                    Response.Write("<script lang='Javascript'>alert('TC kimlik numarası ile daha önce kayıt yapılmış');</script>");
                }
                else if (dr2.Read())
                {
                    Response.Write("<script lang='Javascript'>alert('Bu kullanıcı adı daha önce alınmış');</script>");
                }
                else
                {
                    
                    cmd.CommandText = "update kullaniciler set ad=@ad,soyad=@soy,ka=@ka,sifre=@sif,email=@e,yas=@ya,kontrol=@kon where Tc=@tc";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@ad", tbad.Text);
                    cmd.Parameters.AddWithValue("@soy", tbso.Text);
                    cmd.Parameters.AddWithValue("@ka", tbka.Text);
                    cmd.Parameters.AddWithValue("@sif", tbsifre.Text);
                    cmd.Parameters.AddWithValue("@e", tbe.Text);
                    cmd.Parameters.AddWithValue("@ya", tbyas.Text);
                    cmd.Parameters.AddWithValue("@kon", kontrol);
                    cmd.Parameters.AddWithValue("@tc", tbtc.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("anasayfa.aspx");


                } Session["d"] = 1;
            }
        }
    }
}
