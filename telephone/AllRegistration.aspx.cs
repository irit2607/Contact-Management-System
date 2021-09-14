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
namespace register
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void page_load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                txtpass.Attributes["value"] = txtpass.Text;
               SqlConnection con = new SqlConnection("server=localhost; database=leave; uid=leave_user; password=velocity;");              
            }
        }

        protected void RegisterBtn(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=localhost; database=leave; uid=leave_user; password=velocity;");
    

            String sql = "insert into telephone (emp_id, officer_name, designation, dept, ext_no, std_no, mobile_no, room_no, address, senior_no, password ) values ('" + empTextBox1.Text + "', '" + txtname.Text + "', '" + desigDropDownList1.SelectedValue + "', '" + deptDropDownList2.SelectedValue + "', '" + extTextBox3.Text + "', '" + stdTextBox4.Text + "', '" + mobTextBox5.Text + "', '" + roomTextBox6.Text + "', '" + addTextBox7.Text + "', '" + senTextBox8.Text + "', '" + txtpass.Text + "')";
            
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("emp_id", empTextBox1.Text);
                    cmd.Parameters.AddWithValue("officer_name", txtname.Text);
                    cmd.Parameters.AddWithValue("designation", desigDropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("dept", deptDropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("ext_no", extTextBox3.Text);
                    cmd.Parameters.AddWithValue("std_no", stdTextBox4.Text);
                    cmd.Parameters.AddWithValue("mobile_no", mobTextBox5.Text);
                    cmd.Parameters.AddWithValue("room_no", roomTextBox6.Text);
                    cmd.Parameters.AddWithValue("address", addTextBox7.Text);
                    cmd.Parameters.AddWithValue("senior_no", senTextBox8.Text);
                    cmd.Parameters.AddWithValue("password", txtpass.Text);
               
          
            con.Open();
            cmd.ExecuteNonQuery();
            message.Text = "Your Account is created . Please login now.";
            con.Close();
            
        }
        
        protected void LoginBtn(object sender, EventArgs e)
        {
          Server.Transfer("login.aspx");  
        }

       
}
    
}
