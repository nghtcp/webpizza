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
            if (!IsPostBack)
            {
                PopulateGridview();
            }

        }

        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (con)
            {
                con.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM tavoli", con);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                GridView2.DataSource = dtbl;
                GridView2.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                GridView2.DataSource = dtbl;
                GridView2.DataBind();
                GridView2.Rows[0].Cells.Clear();
                GridView2.Rows[0].Cells.Add(new TableCell());
                GridView2.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                GridView2.Rows[0].Cells[0].Text = "No ci sono prenotazioni!";
                GridView2.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (con)
                    {
                        con.Open();
                        string query = "INSERT INTO tavoli (uid,numpers,datap,Email) VALUES (@uid,@numpers,@datap)";
                        SqlCommand sqlCmd = new SqlCommand(query, con);
                        sqlCmd.Parameters.AddWithValue("@uid", (GridView2.FooterRow.FindControl("txtuidFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@numpers", (GridView2.FooterRow.FindControl("txtnumpersFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@datap", (GridView2.FooterRow.FindControl("txtdatapFooter") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                        lblSuccessMessage.Text = "New Record Added";
                        lblErrorMessage.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            PopulateGridview();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (con)
                {
                    con.Open();
                    string query = "UPDATE tavoli SET uid=@uid,numpers=@numpers,datap=@datap WHERE id = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, con);
                    sqlCmd.Parameters.AddWithValue("@uid", (GridView2.Rows[e.RowIndex].FindControl("txtuid") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@numpers", Convert.ToInt32((GridView2.Rows[e.RowIndex].FindControl("txtnumpers") as TextBox).Text.Trim()));
                    sqlCmd.Parameters.AddWithValue("@datap", Convert.ToDateTime((GridView2.Rows[e.RowIndex].FindControl("txtdatap") as TextBox).Text.Trim()));
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    GridView2.EditIndex = -1;
                    con.Close();

                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Updated";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //try
            //{
                using (con)
                {
                con.Open();
                string query = "DELETE FROM tavoli WHERE id = @id";
                SqlCommand sqlCmd = new SqlCommand(query, con);
                sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value.ToString()));
                sqlCmd.ExecuteNonQuery();




                con.Close();

                GridView2.EditIndex = -1;

                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Deleted";
                    lblErrorMessage.Text = "";


                }
            //}
            //catch (Exception ex)
            //{
            //    lblSuccessMessage.Text = "";
            //    lblErrorMessage.Text = ex.Message;
            //}
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("./index.aspx");
        }
    }

}