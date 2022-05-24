using System;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace book_store
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from userdata where username='" + TextBox2.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    MessageBox.Show("User already exists.", "The Fairy Book", MessageBoxButtons.OK);
                }
                conn.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox3.Text.Equals(""))
            {
                if (TextBox1.Text.Equals(""))
                {
                    Label1.Visible = true;
                }
                else
                {
                    Label1.Visible = false;
                }
                if (TextBox2.Text.Equals(""))
                {
                    Label2.Visible = true;
                }
                else
                {
                    Label2.Visible = false;
                }
                if (TextBox3.Text.Equals(""))
                {
                    Label3.Visible = true;
                }
                else
                {
                    Label3.Visible = false;
                }
            }
            else
            {
                try
                {
                    
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn.Open();
                    string insertquery = "insert into userdata (email , username, password) values (@email , @username, @password)";
                    SqlCommand com = new SqlCommand(insertquery, conn);
                    com.Parameters.AddWithValue("@email", TextBox1.Text);
                    com.Parameters.AddWithValue("@username", TextBox2.Text);
                    com.Parameters.AddWithValue("@password", TextBox3.Text);
                    com.ExecuteNonQuery();
                    MessageBox.Show("Thanks for signing up!","The Fairy Book",MessageBoxButtons.OK);
                    Response.Redirect("login.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                    conn.Close();
                }
                catch (Exception ex)
                {


                   MessageBox.Show("Error:" + ex.ToString(), "The Fairy Book", MessageBoxButtons.OK,MessageBoxIcon.Error);
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}