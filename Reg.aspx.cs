using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;


namespace project1
{
    public partial class Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Calendar1.Visible = false;
            }
            TextBox5.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
           
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }


        }

    protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(Server.MapPath("~/upload/") + Path.GetFileName(FileUpload1.FileName));
                //Image1.ImageUrl = "~/upload/" + FileUpload1.FileName;
            }
            SqlConnection con = new SqlConnection(@"Data Source=MAHENDRANATH\SQL;Initial Catalog=project;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into reg values(@a,@b,@c,@d,@e,@f,@g,@h)", con);
            con.Open();
            cmd.Parameters.AddWithValue("a", TextBox1.Text);

            cmd.Parameters.AddWithValue("b", TextBox2.Text);

            cmd.Parameters.AddWithValue("c", TextBox4.Text);

            cmd.Parameters.AddWithValue("d", TextBox5.Text);
            cmd.Parameters.AddWithValue("e", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("f", TextBox6.Text);
            cmd.Parameters.AddWithValue("g", TextBox7.Text);
            cmd.Parameters.AddWithValue("h", "~/upload/" + FileUpload1.FileName);

            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("~/Login.aspx");

            Response.Write("<script> alert('Record saved successful ....')</script>");
        }
    }
}