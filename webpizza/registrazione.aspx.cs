using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name
using System.Linq.Expressions;
using System.Text;

namespace webpizza
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainDB"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("./prenotazione.aspx?uid=" + TextBox1.Text);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("./index.aspx");

        }

        protected void Button4_Click1(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            StringBuilder errormessages = new StringBuilder();
            
            con.Open();
            string qry = "select * from [dbo].Ulogin where UserId='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                lblErrorMessage.Visible = true;
                lblErrorMessage.Text = "Utente Esistente";
                con.Close();
            }
            else
            {
                con.Close();
                try
                {
                    SqlCommand com = new SqlCommand("CUser", con);
                    com.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("UserId", TextBox1.Text);
                    SqlParameter p2 = new SqlParameter("Password", TextBox2.Text);
                    SqlParameter p3 = new SqlParameter("email", TextBox3.Text);
                    com.Parameters.Add(p1);
                    com.Parameters.Add(p2);
                    com.Parameters.Add(p3);
                    con.Open();
                    SqlDataReader rd = com.ExecuteReader();
                    rd.Close();
                    lblSuccessMessage.Visible = true;
                    lblErrorMessage.Visible = false;
                    lblSuccessMessage.Text = "Utente Creato";
                    Button2.Visible = true;
                }
                catch (SqlException ex)
                {
                    string errore = "Error: " + ex.Errors[0].ToString();
                    lblErrorMessage.Visible = true;
                    lblErrorMessage.Text = "Errore!!!";
                    Button3.Visible = true;
                }
            }





        }
    }
}