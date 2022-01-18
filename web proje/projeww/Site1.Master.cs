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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public StringBuilder basliktut = new StringBuilder();
        public StringBuilder iceriktut = new StringBuilder();
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            con.Open();
            DataSet ds = new DataSet();
            string sec = "select * from  footer";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "footer");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                basliktut.Append("<li>");//liste ekledik li burada html kodu
                basliktut.Append("<a href='footer.aspx?id=" + ds.Tables[0].Rows[i]["id"] + "'style='color:#1a00ff'>");//burada ds deki idleri aldık ve ekledik listeye 
                basliktut.Append(ds.Tables[0].Rows[i]["baslik"]);//burada ds deki adları liseteye ekledik
                basliktut.Append("</a></li>");// liste ve a paragrafını kapattık
            }

            

           
        }

       
    }
}