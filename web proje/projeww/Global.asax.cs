using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data;
using System.Data.OleDb;

namespace projeww
{
    public class Global : System.Web.HttpApplication
    {
        OleDbDataReader dr;
        string gelen;
        
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["online"] = 0;
            
            
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application["online"] = (int)Application["online"] + 1;
            string IP = Request.UserHostAddress;
            OleDbConnection con = new OleDbConnection();
            con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            con.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from ip where ip=@ip";
            cmd.Parameters.AddWithValue("@ip", IP);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                gelen = (0).ToString();

            }
            else
            {
                OleDbCommand cmd1 = new OleDbCommand();
                cmd1.Connection = con;
                cmd1.CommandText = "insert into ip (ip) Values (@ip)";
                cmd1.Parameters.AddWithValue("@ip", (IP).ToString());
                cmd1.ExecuteNonQuery();
                con.Close();
            }
            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            OleDbDataAdapter adp = new OleDbDataAdapter("select * from sayac",conn);
            DataTable tablo = new DataTable();
            adp.Fill(tablo);
            string komut = "";
            if (gelen != (0).ToString())
            {
                if (((DateTime)tablo.Rows[0]["tarih"]).Day == DateTime.Now.Day)
                {
                    komut = "update sayac set gunluk=gunluk+1,toplam=toplam+1";
                    


                }
                else
                {
                    if (((DateTime)tablo.Rows[0]["tarih"]).Month == DateTime.Now.Month)
                    {
                        
                        komut = "update sayac set tarih='" + DateTime.Now.ToString("dd.MM.yyyy") + "', gunluk=1,toplam=toplam+1";
                    }
                }
            OleDbCommand cmd2 = new OleDbCommand(komut, conn);
            conn.Open();
            cmd2.ExecuteNonQuery();
            conn.Close();
            Session.Timeout = 5; 
            }
            
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application["online"] = (int)Application["online"] - 1;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}