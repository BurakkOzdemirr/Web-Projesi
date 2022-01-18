using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Text;

namespace projeww
{
    public partial class anasayfa : System.Web.UI.Page
    {

        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        string id;
        public string tutsehir;
        public string tutbaslik;
        public string tutkategori;
        
        void vericek()
        {
            con.Open();
            string sec = "select * from geziler";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "geziler");
            GridView1.DataSource = ds.Tables["geziler"];
            GridView1.DataBind();
            con.Close();

        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            lbhosgeldin.Text = Session["ka"].ToString();
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            
            if (!IsPostBack) 
            { 
                vericek();
                
            } 
           

        }

        protected void bcikis_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Page.Response.Redirect("giris.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            string sec = "select * from geziler where id=" + GridView1.SelectedValue;
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "geziler");
            tbid.Text = ds.Tables["geziler"].Rows[0]["id"].ToString();
            con.Close();
            Session["id1"] = tbid.Text;
            Application["k"] = 1;
        }

        protected void bgoruntule_Click(object sender, EventArgs e)
        {
            int kayno = GridView1.SelectedIndex;
            if (kayno >= 0)
            {
                string a = "2";
                Session["nere"] = a;
                Page.Response.Redirect("goruntu.aspx");


            }
            else Response.Write("<script lang='JavaScript'>alert('Kayıt Seçin');</script>");
            
        }
    }
}