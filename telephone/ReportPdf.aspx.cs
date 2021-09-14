using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
namespace genrate
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void page_load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }


        protected void GenerateReport(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=localhost; database=leave; uid=leave_user; password=velocity;");
            SqlCommand cmd = new SqlCommand("select * from telephone", con);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable datatable = new DataTable();
            da.Fill(datatable);

            ReportDocument crystalReport = new ReportDocument();
            crystalReport.Load(Server.MapPath("~/telephonelist.rpt")); // path of report 
            crystalReport.SetDataSource(datatable); // binding datatable
            CrystalReportViewer1.ReportSource = crystalReport;
            string sql = "select * from telephone ";
            
           
                crystalReport.SetParameterValue("dept", report_dept.Text);

            


            crystalReport.ExportToHttpResponse
            (CrystalDecisions.Shared.ExportFormatType.PortableDocFormat, Response, true, "Department Detail");

            message.Text = "data updated successfully";





        }
    }
}

