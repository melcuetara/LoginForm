using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace LoginForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "SELECT u.UserID, u.UserLastName, sum(p.ProSoldCount * p.ProPrice) as 'Total Revenue' FROM opportunitydb.users u INNER JOIN opportunitydb.businessuser ON businessuser.BusID = u.userID INNER JOIN opportunitydb.product p ON p.ProBID = businessuser.BusID GROUP BY u.UserID";
            string sm = ConfigurationManager.ConnectionStrings["DBMC"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(sm))
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    DataTable dt = new DataTable();
                    dt.Clear();
                    dt.Columns.Add("UserID");
                    dt.Columns.Add("Full Name");
                    dt.Columns.Add("Total Revenue");
                    object[] item = { reader["u.UserID"].ToString(), reader["u.UserLastName"].ToString(), reader["Total Revenue"].ToString() };
                    dt.Rows.Add(item);
                    Chart1.DataSource = dt;
                    Chart1.DataBind();
                }

            }
            
            

        }
    }
}