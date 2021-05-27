using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace LoginForm
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "select u.UserID,concat(u.UserFirstName,' ' , u.UserLastName) as userName from opportunitystreet.users u  join opportunitystreet.login l on l.UserID = u.UserID join dbo.Admin ad on ad.UserID = u.UserID where l.UserName = '" + userTextbox.Text + "' and l.Password = '" + passwordTextbox.Text + "'";
            string sm = ConfigurationManager.ConnectionStrings["DBMC"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(sm))
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                if(reader.HasRows)
                {
                    HttpCookie cokie = new HttpCookie("Users");
                    cokie.Value =  reader["userName"].ToString();
                    Response.Cookies.Add(cokie);
                    cokie.Expires = DateTime.Now.AddDays(1);
                    Response.Redirect("WebForm1.aspx");
                }
                
            }
            
        }
    }
}