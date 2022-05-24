using System;
using System.Data.SqlClient;
using System.Configuration;
namespace book_store
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "SELECT image, title, author, Genre, price FROM book WHERE title LIKE '"+ TextBox1.Text + "%'";
                SqlDataReader dr = cmd.ExecuteReader();
            do
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            } while (dr.Read());



            conn.Close();
        }
        
    }
}