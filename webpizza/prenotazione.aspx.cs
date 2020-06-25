using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name 
using System.Net;
using System.Collections.Specialized;
using System.Data;

namespace webpizza
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainDB"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            string uid = Request.QueryString["uid"];
            Label6.Text = uid;
            try
            {
                
                con.Open();
                string qry = "select * from tavoli where uid='" + uid + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                GridView1.DataSource = reader;
                GridView1.DataBind();

                con.Close();

                //    Label4.Text = "Login Sucess......!!";
                //    logged = true;
                //    Button2.Visible = true;
                //}
                //else
                //{
                //    Label4.Text = "UserId & Password Is not correct Try again..!!";
                //    logged = false;
                //    Button2.Visible = false;

                //}
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int numpersone = int.Parse(TextBox1.Text);
            DateTime dataprenotazione = Calendar1.SelectedDate;
            Label4.Text = Calendar1.SelectedDate.ToString("dd-MMM-yyyy");
        }
    }
}
