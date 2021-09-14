using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace datafetch
{
   public partial class _Default : System.Web.UI.Page
    {
      protected void page_load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTable();
            }
            
        }
          
        private void LoadTable()
        {                    
           
              
                  SqlConnection con = new SqlConnection("server=localhost; database=leave; uid=leave_user; password=velocity;");           
                  string pwd = Page.Request.QueryString["empid"];
                  using (SqlCommand cmd = new SqlCommand("SELECT * FROM telephone WHERE emp_id ='" + pwd + "' ",con))
                  {
                     
                     cmd.Connection = con;
                      using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                     {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                     }
                  
                  }
                
        }    
                      
        protected void Search_Click(object sender, EventArgs e)
        {
            this.LoadTable();
        }
          
        

    }
}

