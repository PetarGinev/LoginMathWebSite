using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace MyWebSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            string checkUser = "select count(*) from UserRegistration where UserName = '" + TextBoxUserLogin.Text + "' and Password = '" + TextBoxPassLogin.Text + "'";

            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
            conn.Close();
            
            if (temp > 0)
            {
                Session["New"] = TextBoxUserLogin.Text;
                Response.Redirect("User.aspx");
            }
            else
            {
                incorrectLabel.Visible = true;
                incorrectLabel.Text = "Incorrect username or password!";
                incorrectLabel.ForeColor = System.Drawing.Color.Red;
            }

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}