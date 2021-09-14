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
namespace insert
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void page_load(object sender, EventArgs e)
        {

        }
       

        SqlConnection con = new SqlConnection("server=localhost; database=leave; uid=leave_user; password=velocity;");
            

        public void Button1_Click(object sender, EventArgs e)  
        {
            String sql = "insert into telephone (officer_name,designation, dept, ext_no,std_no, mobile_no, room_no, address, senior_no) values ('" + TextBox1.Text + "', '" + DropDownList1.SelectedValue + "', '" + DropDownList2.SelectedValue + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + TextBox6.Text + "', '" + TextBox8.Text + "')";
        	SqlCommand cmd = new SqlCommand(sql,con);
        	cmd.Parameters.AddWithValue("@officer_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@designation", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@dept", DropDownList2.SelectedValue);
        	cmd.Parameters.AddWithValue("@ext_no", TextBox2.Text); 
        	cmd.Parameters.AddWithValue("@std_no", TextBox3.Text); 
        	cmd.Parameters.AddWithValue("@mobile_no", TextBox4.Text); 
        	cmd.Parameters.AddWithValue("@room_no", TextBox5.Text); 
        	cmd.Parameters.AddWithValue("@address", TextBox6.Text);
            cmd.Parameters.AddWithValue("@senior", TextBox8.Text); 

        	
        	con.Open();
             
            cmd.ExecuteNonQuery();
            message.Text = "data inserted successfully";

            TextBox1.Text = "";
            DropDownList1.SelectedValue = "";
            DropDownList2.SelectedValue = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox8.Text = "";

            con.Close();
            

        }


        
       
    }
}  
