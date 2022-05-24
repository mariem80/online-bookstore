using System;
using System.Windows.Forms;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace book_store
{

    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {

                string myvalue = Session["username"].ToString();
                username.Text = myvalue;
            }
            else
            {
                username.Text = "Guest";
            }
            DataTable dt = new DataTable();
            dt = (DataTable)Session["id"];
            if (dt!=null)
            {
                int sum = total();
                Label1.Text = sum.ToString();

            }
            else
            {
                Label1.Text = "0";
            }
            BindGrid();
        }
        protected void BindGrid()
        {
            GridView1.DataSource = (DataTable)Session["id"];
            GridView1.DataBind();
        }

        public int total()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["id"];
            int i = 0;
            int gtotal = 0;
            while (i < dt.Rows.Count)
            {
                gtotal = gtotal + Convert.ToInt16(dt.Rows[i]["Price"].ToString());
                i = i + 1;
            }
            return gtotal;
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = Convert.ToInt32(e.RowIndex);
            DataTable dt = Session["id"] as DataTable;
            dt.Rows[index].Delete();
            Session["id"] = dt;
            BindGrid();
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = Session["id"] as DataTable;
            if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("")|| dt.Rows.Count==0 ||dt==null ||username.Text.Equals("Guest"))
            {
                if (TextBox1.Text.Equals(""))
                {
                    Label2.Visible = true;
                }
                else
                {
                    Label2.Visible = false;
                }
                if (TextBox2.Text.Equals(""))
                {
                    Label3.Visible = true;
                }
                else
                {
                    Label3.Visible = false;
                }
                if (dt==null || dt.Rows.Count == 0 )
                {
                    MessageBox.Show("Your cart is empty.", "The Fairy Book", MessageBoxButtons.OK,MessageBoxIcon.Warning);
                }
                if (username.Text.Equals("Guest"))
                {
                    MessageBox.Show("Please login first.", "The Fairy Book", MessageBoxButtons.OK,MessageBoxIcon.Warning);
                }
            }
            else
            {
                try
                {
                    //update userdata_table with add & phone
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn.Open();
                    string updatequery = "update  userdata set address=@add, phone= @phone where UserName='" + username.Text + "'";
                    SqlCommand com = new SqlCommand(updatequery, conn);
                    com.Parameters.AddWithValue("@add", TextBox1.Text);
                    com.Parameters.AddWithValue("@phone", TextBox2.Text);
                    com.ExecuteNonQuery();

                    string title;
                    int nrow = dt.Rows.Count;
                    int i = 0;
                    while (i < nrow)
                    {
                        //decrement quantity by one 
                        title = dt.Rows[i]["Title"].ToString();
                        string query = "update  book set quantity=quantity-1 where title='" + title + "'";
                        com = new SqlCommand(query, conn);
                        com.Parameters.AddWithValue("@add", TextBox1.Text);
                        com.ExecuteNonQuery();
                        i = i + 1;
                    }
                    conn.Close();



                    //insert into orders_table username and bookid, there'll be a row for every book
                    conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn.Open();

                    for (int j = 0; j < dt.Rows.Count; j++)
                    {
                        string insertquery = "insert into orders (user_name,book_id) values(@username,@bookid)";
                         com = new SqlCommand(insertquery, conn);
                        com.Parameters.AddWithValue("@username", username.Text);
                        com.Parameters.AddWithValue("@bookid", Convert.ToInt16(dt.Rows[j]["ID"].ToString()));
                        com.ExecuteNonQuery();
                    }

                    MessageBox.Show("Your order is confirmed.", "The Fairy Book", MessageBoxButtons.OK);

                    //clear cart
                    while (dt.Rows.Count > 0)
                    {
                        for(int j=0; j < dt.Rows.Count; j++)
                        {
                            dt = Session["id"] as DataTable; 
                            dt.Rows[j].Delete();
                            Session["id"] = dt;
                            BindGrid();
                        }
                        

                    }
                    conn.Close();
                }
                catch (Exception ex)
                {


                    MessageBox.Show("Error:" + ex.ToString(),"The Fairy Book",MessageBoxButtons.OK,MessageBoxIcon.Error);
                }
            }
        }

       
    }
}