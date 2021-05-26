using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.DataVisualization.Charting;

namespace LoginForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }
        int rows;
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "SELECT DATENAME(month, bod.OrderDate) AS Month, SUM(p.ProPrice * bod.OrderQuantity) AS 'Gross Sales', SUM(bod.OrderQuantity) AS 'Items Sold' FROM opportunitydb.product p JOIN opportunitydb.busorderdescription bod ON bod.ProID = p.ProID GROUP by bod.OrderDate";
            string sm = ConfigurationManager.ConnectionStrings["DBMC"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(sm))
            {
                cn.Open();
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand(sql, cn);
                SqlDataAdapter d = new SqlDataAdapter(cmd);
                d.Fill(dt);
                d.Fill(ds);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Chart1.DataSource = ds;
                string[] x = new string[dt.Rows.Count];
                int[] y = new int[dt.Rows.Count];

                for(int i = 0;i<dt.Rows.Count;i++)
                {
                    x[i] = dt.Rows[i][0].ToString();
                    y[i] = Convert.ToInt32(dt.Rows[i][1]);
                }
                Chart1.Series[0].Points.DataBindXY(x, y);
                Chart1.Series[0].ChartType = SeriesChartType.StackedColumn;
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            
        }
    }
}