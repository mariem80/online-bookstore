using System;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;
namespace book_store
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text.Equals("") || TextBox3.Text.Equals(""))
            {
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
            else {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from userdata where UserName='" + TextBox2.Text + "' and password='" + TextBox3.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Session["username"] = TextBox2.Text;
                    Response.Redirect("view.aspx");

                }
                else
                {
                    MessageBox.Show("User doesn't exist.", "The Fairy Book", MessageBoxButtons.OK);
                }
                conn.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
    }
}