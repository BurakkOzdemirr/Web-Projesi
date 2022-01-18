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
    public partial class adminresim : System.Web.UI.Page
    {
        
        OleDbConnection con = new OleDbConnection();
        DataSet ds = new DataSet();
        int id;
       
        void vericek()
        {
            con.Open();
            string sec = "select * from resim";
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "resim");
            GridView1.DataSource = ds.Tables["resim"];
            GridView1.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
             con.ConnectionString = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=" + Server.MapPath("~/web.mdb");
            if (!IsPostBack)
                vericek();
        }

        protected void bekle_Click(object sender, EventArgs e)
        {
            if (resimyukle.HasFile)
            {
                con.Open();
            resimyukle.SaveAs(Server.MapPath("resimgalerisi/resim/" + resimyukle.FileName));
            string rsmadi=tbadi.Text;
            string  rsm = resimyukle.FileName; 
            OleDbCommand cmd = new OleDbCommand("insert into resim(resimadi,resimyolu) values ('" + rsmadi + "','" + rsm + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            vericek();
            tbadi.Text = "";
 
        }
        else {
            Response.Write("<script lang='Javascript'>alert('Kaydetme işlemi için resim seçiniz');</script>");
             }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {  
            con.Open();
            string sec = "select * from resim where id=" + GridView1.SelectedValue;
            OleDbDataAdapter da = new OleDbDataAdapter(sec, con);
            da.Fill(ds, "resim");
            tbid.Text = ds.Tables["resim"].Rows[0]["id"].ToString();
            tbadi.Text = ds.Tables["resim"].Rows[0]["resimadi"].ToString();
            string rsmyolu = ds.Tables["resim"].Rows[0]["resimyolu"].ToString();
            con.Close();
            Image1.ImageUrl = "resimgalerisi/resim/" + rsmyolu;
            
            
         
        }

        protected void bsil_Click(object sender, EventArgs e)
        {
            int kayno = GridView1.SelectedIndex;
            if (kayno >= 0)
            {
                con.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = con;
                cmd.CommandText = "delete from resim where id=@id";
                cmd.Parameters.AddWithValue("@id", int.Parse(tbid.Text));
                cmd.ExecuteNonQuery();
                con.Close();
                vericek();


            }
            else Response.Write("<script lang='JavaScript'>alert('Kayıt Seçin');</script>");
           
            
        }
    }
}
