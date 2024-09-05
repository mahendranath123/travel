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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=MAHENDRANATH\SQL;Initial Catalog=project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select username,passwd from reg where username='" + TextBox1.Text + "' and  Passwd='" + TextBox2.Text + "' ", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["id"] = TextBox1.Text;
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                Response.Write("invalid user name");
            }
        }
    }
}