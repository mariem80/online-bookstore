using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace book_store
{
    public partial class view : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] != null)
            {
                string myvalue = Session["username"].ToString();
                username.Text = myvalue;

            }
            else
            {
                username.Text = "Guest";
            }
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[4] { new DataColumn("image"), new DataColumn("ID"), new DataColumn("Title"), new DataColumn("Price") });
                Session["id"] = dt;
            }

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select title , author , price , genre , quantity ,about ,image from book where Id=1";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Name1.Text = dr[0].ToString();
                author1.Text = dr[1].ToString();
                price1.Text = dr[2].ToString();
                Genre1.Text = dr[3].ToString();
                
                if (Convert.ToInt32(dr[4].ToString()) > 0)
                {
                    
                    stock1.Text = "In stock";
                }
                else 
                {
                    stock1.Text = "Out of stock";
                    Button1.Visible = false;
                }
                About1.Text = dr[5].ToString();
                Image1.ImageUrl = dr[6].ToString();
            }
            conn.Close();

            conn.Open();
            cmd.CommandText = "select title , author , price , genre , quantity,about,image from book where Id=2";
             dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Name2.Text = dr[0].ToString();
                author2.Text = dr[1].ToString();
                price2.Text = dr[2].ToString();
                Genre2.Text = dr[3].ToString();
                
                if (Convert.ToInt32(dr[4].ToString()) > 0)
                {
                   
                    stock2.Text = "In stock";
                }
                else 
                {
                    
                    stock2.Text = "Out of stock";
                    Button2.Visible = false;
                }
                About2.Text = dr[5].ToString();
                Image2.ImageUrl = dr[6].ToString();
            }
            conn.Close();


            conn.Open();
            cmd.CommandText = "select title , author , price , genre , quantity,about,image from book where Id=3";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Name3.Text = dr[0].ToString();
                author3.Text = dr[1].ToString();
                price3.Text = dr[2].ToString();
                Genre3.Text = dr[3].ToString();

                if (Convert.ToInt32(dr[4].ToString()) > 0)
                {

                    stock3.Text = "In stock";
                }
                else
                {

                    stock3.Text = "Out of stock";
                    Button3.Visible = false;
                }
                About3.Text = dr[5].ToString();
                Image3.ImageUrl = dr[6].ToString();
            }
            conn.Close();


            conn.Open();
            cmd.CommandText = "select title , author , price , genre , quantity,about,image from book where Id=4";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Name4.Text = dr[0].ToString();
                author4.Text = dr[1].ToString();
                price4.Text = dr[2].ToString();
                Genre4.Text = dr[3].ToString();

                if (Convert.ToInt32(dr[4].ToString()) > 0)
                {

                    stock4.Text = "In stock";
                }
                else
                {

                    stock4.Text = "Out of stock";
                    Button4.Visible = false;
                }
                About4.Text = dr[5].ToString();
                Image4.ImageUrl = dr[6].ToString();
            }
            conn.Close();


            conn.Open();
            cmd.CommandText = "select title , author , price , genre , quantity,about,image from book where Id=5";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Name5.Text = dr[0].ToString();
                author5.Text = dr[1].ToString();
                price5.Text = dr[2].ToString();
                Genre5.Text = dr[3].ToString();

                if (Convert.ToInt32(dr[4].ToString()) > 0)
                {

                    stock5.Text = "In stock";
                }
                else
                {

                    stock5.Text = "Out of stock";
                    Button5.Visible = false;
                }
                About5.Text = dr[5].ToString();
                Image5.ImageUrl = dr[6].ToString();
            }
            conn.Close();


            conn.Open();
            cmd.CommandText = "select title , author , price , genre , quantity,about,image from book where Id=6";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Name6.Text = dr[0].ToString();
                author6.Text = dr[1].ToString();
                price6.Text = dr[2].ToString();
                Genre6.Text = dr[3].ToString();

                if (Convert.ToInt32(dr[4].ToString()) > 0)
                {

                    stock6.Text = "In stock";
                }
                else
                {

                    stock6.Text = "Out of stock";
                    Button6.Visible = false;
                }
                About6.Text = dr[5].ToString();
                Image6.ImageUrl = dr[6].ToString();
            }
            conn.Close();



            conn.Open();
            cmd.CommandText = "select title , author , price , genre , quantity,about,image from book where Id=7";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Name7.Text = dr[0].ToString();
                author7.Text = dr[1].ToString();
                price7.Text = dr[2].ToString();
                Genre7.Text = dr[3].ToString();

                if (Convert.ToInt32(dr[4].ToString()) > 0)
                {

                    stock7.Text = "In stock";
                }
                else
                {

                    stock7.Text = "Out of stock";
                    Button7.Visible = false;
                }
                About7.Text = dr[5].ToString();
                Image7.ImageUrl = dr[6].ToString();
            }
            conn.Close();

            conn.Open();
            cmd.CommandText = "select title , author , price , genre , quantity,about,image from book where Id=8";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Name8.Text = dr[0].ToString();
                author8.Text = dr[1].ToString();
                price8.Text = dr[2].ToString();
                Genre8.Text = dr[3].ToString();

                if (Convert.ToInt32(dr[4].ToString()) > 0)
                {

                    stock8.Text = "In stock";
                }
                else
                {

                    stock8.Text = "Out of stock";
                    Button8.Visible = false;
                }
                About8.Text = dr[5].ToString();
                Image8.ImageUrl = dr[6].ToString();
            }
            conn.Close();

            conn.Open();
            cmd.CommandText = "select title , author , price , genre , quantity,about,image from book where Id=9";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Name9.Text = dr[0].ToString();
                author9.Text = dr[1].ToString();
                price9.Text = dr[2].ToString();
                Genre9.Text = dr[3].ToString();

                if (Convert.ToInt32(dr[4].ToString()) > 0)
                {

                    stock9.Text = "In stock";
                }
                else
                {

                    stock9.Text = "Out of stock";
                    Button9.Visible = false;
                }
                About9.Text = dr[5].ToString();
                Image9.ImageUrl = dr[6].ToString();
            }
            conn.Close();

            conn.Open();
            cmd.CommandText = "select title , author , price , genre , quantity,about,image from book where Id=10";
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Name10.Text = dr[0].ToString();
                author10.Text = dr[1].ToString();
                price10.Text = dr[2].ToString();
                Genre10.Text = dr[3].ToString();

                if (Convert.ToInt32(dr[4].ToString()) > 0)
                {

                    stock10.Text = "In stock";
                }
                else
                {

                    stock10.Text = "Out of stock";
                    Button10.Visible = false;
                }
                About10.Text = dr[5].ToString();
                Image10.ImageUrl = dr[6].ToString();
            }
            conn.Close();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            DataTable dt = (DataTable)Session["id"];
            
            dt.Rows.Add(Image1.ImageUrl,'1', Name1.Text, price1.Text);
            Session["id"] = dt;
        }   

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["id"];
            dt.Rows.Add(Image2.ImageUrl, '2', Name2.Text, price2.Text);
            Session["id"] = dt;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["id"];
            dt.Rows.Add(Image3.ImageUrl, '3', Name3.Text, price3.Text);
            Session["id"] = dt;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["id"];
            dt.Rows.Add(Image4.ImageUrl, '4', Name4.Text, price4.Text);
            Session["id"] = dt;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["id"];
            dt.Rows.Add(Image5.ImageUrl, '5', Name5.Text, price5.Text);
            Session["id"] = dt;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["id"];
            dt.Rows.Add(Image6.ImageUrl, '6', Name6.Text, price6.Text);
            Session["id"] = dt;
          
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["id"];
            dt.Rows.Add(Image7.ImageUrl, '7', Name7.Text, price7.Text);
            Session["id"] = dt;
           // this.BindGrid();

        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["id"];
            dt.Rows.Add(Image8.ImageUrl, '8', Name8.Text, price8.Text);
            Session["id"] = dt;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["id"];
            dt.Rows.Add(Image9.ImageUrl, '9', Name9.Text, price9.Text);
            Session["id"] = dt;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["id"];
            dt.Rows.Add(Image10.ImageUrl, "10", Name10.Text, price10.Text);
            Session["id"] = dt;
        }
        /* protected void BindGrid(){
         * GridView1.DataSource = (DataTable)Session["id"];
         * GridView1.DataBind();}*/
    }
}

//invoice
//admin page 
//quantity counter
//back to store