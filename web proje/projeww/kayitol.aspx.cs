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
    public partial class kayitol : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        OleDbDataReader dr;
        OleDbDataReader dr2;

        public static string tc;

        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");

        }


        protected void btnkayit_Click(object sender, EventArgs e)
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
                else if(dr2.Read())
                {
                    Response.Write("<script lang='Javascript'>alert('Bu kullanıcı adı daha önce alınmış');</script>");
                }
                else
                {
                    dr.Close();
                    cmd.CommandText = "insert into kullaniciler (Tc,ad,soyad,ka,sifre,email,yas,kontrol) Values (@tc,@ad,@soy,@ka,@sif,@e,@yas,@kont)";
                    cmd.Parameters.AddWithValue("@tc", tbtc.Text);
                    cmd.Parameters.AddWithValue("@ad", tba.Text);
                    cmd.Parameters.AddWithValue("@soy", tbso.Text);
                    cmd.Parameters.AddWithValue("@ka", tbka.Text);
                    cmd.Parameters.AddWithValue("@sif", tbsi.Text);
                    cmd.Parameters.AddWithValue("@e", tbe.Text);
                    cmd.Parameters.AddWithValue("@yas", tbyas.Text);
                    cmd.Parameters.AddWithValue("@kont", kontrol.ToString());
                    cmd.ExecuteNonQuery();
                    tc = tbtc.Text;
                    con.Close();
                    Response.Redirect("kullanicigiris.aspx");

                }
            }
        }
    }
}