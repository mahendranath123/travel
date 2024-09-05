using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                Label1.Text = ("Welcome " + Session["id"]);

            }

            if (!IsPostBack)
            {
                if (Request.QueryString["tr"] != null)
                {
                    DataList1.DataSource = null;
                    DataList1.DataSource = SqlDataSource2;
                    DataList1.DataBind();
                }
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["pr"] != null)
                {
                    DataList1.DataSource = null;
                    DataList1.DataSource = SqlDataSource3;
                    DataList1.DataBind();
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            DataList1.DataSource = null;
            DataList1.DataSource = SqlDataSource4;
            DataList1.DataBind();
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "view")
            {
                Response.Redirect("View.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }

        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            //Random r = new Random();
            //int i = r.Next(1, 6);
            //Image2.ImageUrl = "~/image1/" + i.ToString() + ".jpg";
        }
    }
}