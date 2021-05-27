using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginForm
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.Cookies["Users"].Value;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            HttpCookie cokie = new HttpCookie("Users");
            cokie.Value = Label1.Text;
            Response.Cookies.Add(cokie);
            cokie.Expires = DateTime.Now.AddDays(1);
            Response.Redirect("WebForm3.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            HttpCookie cokie = new HttpCookie("Users3");
            cokie.Value = Label1.Text;
            Response.Cookies.Add(cokie);
            cokie.Expires = DateTime.Now.AddDays(1);
            Response.Redirect("WebForm1.aspx");
        }
    }
}