using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name 

namespace webpizza
{

    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainDB"].ToString());
        string uid;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                uid = TextBox1.Text;
                string pass = TextBox2.Text;
                
                con.Open();
                string qry = "select * from [dbo].Ulogin where UserId='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Label4.Text = "Login Sucess......!!";
                    //logged = true;
                    if (uid == "admin")
                    {
                        Button2.Visible = true;
                        Button3.Visible = true;
                    }
                    else Button2.Visible = true;
                }
                else
                {
                    Label4.Text = "UserId & Password Is not correct Try again..!!";
                    //logged = false;
                    Button2.Visible = false;

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("./prenotazione.aspx?uid=" + TextBox1.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("./gestione.aspx?uid=" + TextBox1.Text);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("./index.aspx");

        }
    }
    
}