 using (SqlCommand cmd = new SqlCommand())
              {
                  string empp = Page.Request.QueryString["empid"];
                  string sql = "SELECT * FROM telephone WHERE officer_name LIKE @officer_name + '%' or designation LIKE @designation + '%' or dept LIKE @dept + '%' and emp_id = '" + empp + "'  order by senior_no ";

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
