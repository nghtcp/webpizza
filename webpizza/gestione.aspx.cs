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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainDB"].ToString());
        string uid;

        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Request.QueryString["uid"];
            try
            {

                con.Open();
                string qry = "select * from tavoli";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (reader.HasRows)
                {
                    GridView2.Visible = true;
                    GridView2.DataSource = reader;
                    GridView2.DataBind();
                }

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
    }
}