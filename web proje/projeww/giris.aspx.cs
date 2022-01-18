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
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string tuteposta;
        public string tuttelefon;
        public string tutadres;
        public StringBuilder resimtut = new StringBuilder();
        OleDbConnection con = new OleDbConnection();
       
        void vericek()
        {

            con.Open();
            DataSet ds = new DataSet();
            string sec = "select * from  iletisim";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "iletisim");
            tuteposta = ds.Tables["iletisim"].Rows[0]["eposta"].ToString();
            tuttelefon = ds.Tables["iletisim"].Rows[0]["telefon"].ToString();
            tutadres = ds.Tables["iletisim"].Rows[0]["adres"].ToString();
           
            DataSet ds1 = new DataSet();
            string sec1 = "select * from bilgi where yayinda="+"true";
            OleDbDataAdapter da1 = new OleDbDataAdapter(sec1,con);
            da1.Fill(ds1, "bilgi");
            Repeater1.DataSource = ds1.Tables["bilgi"];
            Repeater1.DataBind();

            DataSet ds2 = new DataSet();
            string sec2 = "select * from resim ";
            OleDbDataAdapter da2 = new OleDbDataAdapter(sec2, con);
            da2.Fill(ds2, "resim");
            for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
            {
                resimtut.Append("<img class='resim' src='resimgalerisi/resim/" + ds2.Tables[0].Rows[i]["resimyolu"] + "'.jpg  >");
                
            }
            
            con.Close();
            
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            if (!IsPostBack)
            vericek();
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = "select * from geziler";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            OleDbDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr["baslik"].ToString());
            }
           
        }

        protected void bara_Click(object sender, EventArgs e)
        {   string a="0";
            Session["baslik"] = DropDownList1.SelectedItem.Text;
            Session["nere"] =a ;
            Page.Response.Redirect("goruntu.aspx");
            
        }

    }
}