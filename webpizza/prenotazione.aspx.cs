﻿using System;
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
        int postiliberi;
        DateTime dataposti;
        string uid;

        protected void Page_Load(object sender, EventArgs e)
        {
            uid = Request.QueryString["uid"];
            Label6.Text = uid;
            try
            {
                
                con.Open();
                string qry = "select * from tavoli where uid='" + uid + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (reader.HasRows)
                {
                    GridView1.Visible = true;
                    Label8.Visible = true;
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            postiliberi = 20;
            DateTime dataprenotazione = Calendar1.SelectedDate;

            con.Open();
            string qry = "select * from posti where data='"+ dataprenotazione.ToString("yyyy-MM-dd")+"'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            int numpersone = int.Parse(TextBox1.Text);
            //if (reader.HasRows)
            //{
                while (reader.Read())
                {
                    postiliberi = reader.GetInt32(0);
                    dataposti = reader.GetDateTime(1);
                }
                if ((postiliberi - numpersone) < 0)
                {
                    Label4.Text=("Posti esauriti !!!!");
                    con.Close();
                }
                else
                {
                    con.Close();
                    con.Open();
                    string query = "UPDATE dbo.posti SET posti=" + (postiliberi - int.Parse(TextBox1.Text)) + ", data='" + dataprenotazione.ToString("yyyy-MM-dd") + "' WHERE data='" + dataprenotazione.ToString("yyyy-MM-dd") + "' IF @@ROWCOUNT =0 INSERT INTO posti(posti,data) VALUES (" + (postiliberi- int.Parse(TextBox1.Text)) + ",'" + dataprenotazione.ToString("yyyy-MM-dd") + "')";
                    SqlCommand comando = new SqlCommand(query, con);
                    comando.ExecuteNonQuery();
                    con.Close();
                    con.Open();
                    query = "INSERT INTO dbo.tavoli (uid,numpers,datap) VALUES ('" + uid + "'," + numpersone + ",'" + dataprenotazione.ToString("yyyy-MM-dd") + "')";
                    comando = new SqlCommand(query, con);
                    comando.ExecuteNonQuery();

                    con.Close();


                    Label4.Text = "Prenotazione Presa!";

                }
            //}
            

            con.Close();





            /*DateTime dataprenotazione = Calendar1.SelectedDate;*/
            /*Label4.Text = Calendar1.SelectedDate.ToString("dd-MMM-yyyy");*/

        }
    }
}
