using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace adminedit
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
           using (SqlCommand cmd = new SqlCommand())
           {
              SqlConnection con = new SqlConnection("server=localhost; database=leave; uid=leave_user; password=velocity;");           
                  string sql = "SELECT * FROM telephone WHERE officer_name LIKE @officer_name + '%' or designation LIKE @designation + '%' or dept LIKE @dept + '%' order by senior_no ";

                      cmd.Parameters.AddWithValue("@officer_name", txt1Search.Text.Trim());
                      cmd.Parameters.AddWithValue("@designation", txt1Search.Text.Trim());
                      cmd.Parameters.AddWithValue("@dept", txt1Search.Text.Trim());
                  
                
                 
                  cmd.CommandText = sql;
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

