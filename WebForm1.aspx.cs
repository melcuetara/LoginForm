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
            userNameLabel.Text = Request.Cookies["Users"].Value;
            if(Request.Cookies["Users"].Value.Equals(""))
            {
                Response.Redirect("WebForm1.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "SELECT DATENAME(month, bod.OrderDate) AS Month, SUM(p.ProPrice * bod.OrderQuantity) AS 'Gross Sales', SUM(bod.OrderQuantity) AS 'Items Sold' FROM opportunitystreet.product p JOIN opportunitystreet.busorderdescription bod ON bod.ProID = p.ProID GROUP by bod.OrderDate";
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
                Chart1.Series[0].ChartType = SeriesChartType.Bar;
            }
        }
        protected void loginBtn_Click(object sender, EventArgs e)
        {
            Request.Cookies.Clear();
            Response.Redirect("WebForm2.aspx");
        }

        protected void adminBtns_Click(object sender, EventArgs e)
        {
            string sql = "select u.UserID,concat(u.UserFirstName, ' ', u.UserLastName) as userName from opportunitystreet.users u  join opportunitystreet.login l on l.UserID = u.UserID join dbo.Admin ad on ad.UserID = u.UserID";
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
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string sql = "SELECT CONCAT(CONCAT(u.UserFirstName,' '),u.UserLastName) as 'Full Name',  SUM(ProPrice * ProSoldCount) AS 'Gross Sales' FROM opportunitystreet.users u INNER JOIN opportunitystreet.businessuser bu ON bu.UserID = u.UserID INNER JOIN opportunitystreet.product p ON p.ProBID = bu.BusID GROUP BY u.UserFirstName, u.UserLastName, p.ProBID ORDER BY SUM(ProPrice* ProSoldCount)";
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

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    x[i] = dt.Rows[i][0].ToString();
                    y[i] = Convert.ToInt32(dt.Rows[i][1]);
                }
                Chart1.Series[0].Points.DataBindXY(x, y);
                Chart1.Series[0].ChartType = SeriesChartType.Column;
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string sql = "SELECT Year(bod.OrderDate) AS Year, SUM(p.ProPrice * bod.OrderQuantity) AS 'Gross Sales',SUM(bod.OrderQuantity) AS 'Items Sold'  FROM opportunitystreet.product p JOIN opportunitystreet.busorderdescription bod ON bod.ProID = p.ProID GROUP BY YEAR(bod.OrderDate)";

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

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    x[i] = dt.Rows[i][0].ToString();
                    y[i] = Convert.ToInt32(dt.Rows[i][1]);
                }
                Chart1.Series[0].Points.DataBindXY(x, y);
                Chart1.Series[0].ChartType = SeriesChartType.Column;
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string sql = "SELECT bu.BusID, bu.BusDescription,  SUM(ProPrice * ProSoldCount) AS 'Gross Sales'  FROM opportunitystreet.users u INNER JOIN opportunitystreet.businessuser bu ON bu.UserID = u.UserID INNER JOIN opportunitystreet.product p ON p.ProBID = bu.BusID GROUP BY bu.BusID, bu.BusDescription ORDER BY SUM(ProPrice* ProSoldCount) DESC";

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

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    x[i] = dt.Rows[i][0].ToString();
                    y[i] = Convert.ToInt32(dt.Rows[i][2]);
                }
                Chart1.Series[0].Points.DataBindXY(x, y);
                Chart1.Series[0].ChartType = SeriesChartType.Column;
            }
        }
    }
}