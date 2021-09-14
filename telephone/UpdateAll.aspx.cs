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
namespace update
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void page_load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("server=localhost; database=leave; uid=leave_user; password=velocity;");
                string psrno = Page.Request.QueryString["Sr.No."];
                using (SqlCommand cmd = new SqlCommand("select * from telephone where Sr_no = '" + psrno + "' ", con))
                {
                    cmd.CommandType = CommandType.Text;

                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();

                        TextBox1.Text = sdr["officer_name"].ToString();
                        DropDownList1.SelectedValue = sdr["designation"].ToString();
                        DropDownList2.SelectedValue = sdr["dept"].ToString();
                        TextBox2.Text = sdr["ext_no"].ToString();
                        TextBox3.Text = sdr["std_no"].ToString();
                        TextBox4.Text = sdr["mobile_no"].ToString();
                        TextBox5.Text = sdr["room_no"].ToString();
                        TextBox6.Text = sdr["address"].ToString();
                        TextBox7.Text = psrno;
                        TextBox9.Text = sdr["senior_no"].ToString();

                    }
                    con.Close();
                }

            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("server=localhost; database=leave; uid=leave_user; password=velocity;");


            string psrno1 = Page.Request.QueryString["Sr.No."];
            SqlCommand cmd;
            cmd = new SqlCommand("update telephone set officer_name=@officer_name, designation=@designation, dept=@dept, ext_no=@ext_no, std_no=@std_no, mobile_no=@mobile_no, room_no=@room_no, address=@address, senior_no=@senior_no where Sr_no = @Sr_no ", con);
            cmd.Parameters.AddWithValue("@Sr_no", TextBox7.Text);
            cmd.Parameters.AddWithValue("@officer_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@designation", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@dept", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@ext_no", TextBox2.Text);
            cmd.Parameters.AddWithValue("@std_no", TextBox3.Text);
            cmd.Parameters.AddWithValue("@mobile_no", TextBox4.Text);
            cmd.Parameters.AddWithValue("@room_no", TextBox5.Text);
            cmd.Parameters.AddWithValue("@address", TextBox6.Text);
            cmd.Parameters.AddWithValue("@senior_no", TextBox9.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            message.Text = "data updated successfully";


            con.Close();




        }

    }
}
