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
    public partial class Site2 : System.Web.UI.MasterPage
    {
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        
        void vericek()
        {
            con.Open();
            string sec = "select * from sayac";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "sayac");
            GridView1.DataSource = ds.Tables["sayac"];
            GridView1.DataBind();
            con.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kontrol"] == null)
            {
                Page.Response.Redirect("giris.aspx");
                Response.Write("<script lang='Javascript'>alert('GİRİŞ YAPMADINIZ');</script>");


            }

            else if (Session["kontrol"].ToString() == (0).ToString())
            {

                Page.Response.Redirect("anasayfa.aspx");
                Response.Write("<script lang='Javascript'>alert('GİRİŞ YETKİNİZ BULUNMAMAKTADIR');</script>");

            }
            
            lonline.Text=Application["online"].ToString();
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            if (!IsPostBack)
                vericek();
            con.Open();
           OleDbCommand cmd = new OleDbCommand("Select toplam from sayac",con);
            OleDbDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
                ltoplam.Text = dr["toplam"].ToString();
            
         }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Page.Response.Redirect("giris.aspx");
        }

        protected void bwebsg_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("giris.aspx");
        }
    }
}