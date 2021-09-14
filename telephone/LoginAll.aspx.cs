using System;
using System.IO;
using System.Web.UI.WebControls;
using System.Web;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Data.SqlClient;
namespace login
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void page_load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               passTextBox3.Attributes["value"] = passTextBox3.Text;
               SqlConnection con = new SqlConnection("server=localhost; database=leave; uid=leave_user; password=velocity;");              
            }
        }

        protected void login_btn(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=localhost; database=leave; uid=leave_user; password=velocity;");

            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM telephone WHERE emp_id='" + empTextBox2.Text + "' AND password='" + passTextBox3.Text + "'", con);
            /* in above line the program is selecting the whole data from table and the matching it with the employee id and password provided by user. */
            
            DataTable dt = new DataTable(); //this is creating a virtual table  
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("database1.aspx?empid='"+ empTextBox2.Text+ "' ");
            }
            else
            {
                message.Text = "Invalid employee id or password";
            }
        }
        
        protected void register_btn(object sender, EventArgs e)
        {
          Server.Transfer("register.aspx");  
        }

       
}
    
}
