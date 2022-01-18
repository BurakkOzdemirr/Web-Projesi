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
    public partial class kullanicigiris : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        OleDbDataReader dr;
        OleDbCommand cmd = new OleDbCommand();
        
        void vericek()
        {
            string sec = "select * from kullaniciler";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            ds.Clear();
            da.Fill(ds, "kullaniciler");
        }

        protected void Page_Load(object sender, EventArgs e)
        {   
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            vericek();
        }

        protected void buton_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM kullaniciler where  ka='" + tbka.Text + "' AND sifre='" + tbs.Text + "'and Tc";
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["kontrol"] =dr["kontrol"].ToString();
                Session["ka"] = dr["ka"].ToString();
                Page.Response.Redirect("anasayfa.aspx");
                
               
            }
            else
                Response.Write("<script lang='Javascript'>alert('Bilgilerinizi kontrol ediniz..');</script>");
            vericek();
            dr.Close();
            con.Close();

        }
    }
}