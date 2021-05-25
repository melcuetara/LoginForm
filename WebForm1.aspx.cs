using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LoginForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string con = "Data Source=opstreetdb.mssql.somee.com;Initial Catalog=opstreetdb;User ID=cjmanagase22;Password=jakeMANAGASE123";
            string sql = "SELECT u.UserID, concat(u.UserLastName, ', ', u.UserFirstName) as 'Full Name', sum(p.ProSoldCount * p.ProPrice) as 'Total Revenue' FROM users u INNER JOIN businessuser ON businessuser.BusID = u.userID INNER JOIN product p ON p.ProBID = businessuser.BusID GROUP BY u.UserID";
            SqlConnection cn = new SqlConnection(con);
            cn.Open();
            SqlCommand cmd = new SqlCommand(sql,cn);
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read())
            {
                DataTable dt = new DataTable();
                dt.Clear();
                dt.Columns.Add("UserID");
                dt.Columns.Add("Full Name");
                dt.Columns.Add("Total Revenue");
                object[] item = { reader["u.UserID"].ToString(), reader["Full Name"].ToString(), reader["Total Revenue"].ToString() };
                dt.Rows.Add(item);
                Chart1.DataSource = dt;
                Chart1.DataBind();
            }
            

        }
    }
}