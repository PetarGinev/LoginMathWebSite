using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace MyWebSite
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

    


        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                #region Check User Name Availability
                SqlConnection connUser = new SqlConnection();
                connUser.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MyReg.mdf;Integrated Security=True";
                connUser.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select * from [UserRegistration] where UserName = @uname";
                cmd.Parameters.AddWithValue("@uname", TextBoxUN.Text);
                cmd.Connection = connUser;
                SqlDataReader rdUser = cmd.ExecuteReader();
                
                #endregion

                #region Check Email Availability
                SqlConnection connEmail = new SqlConnection();
                connEmail.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MyReg.mdf;Integrated Security=True";
                connEmail.Open();
                SqlCommand cmdEmail = new SqlCommand();
                cmdEmail.CommandText = "select * from [UserRegistration] where Email = @email";
                cmdEmail.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                cmdEmail.Connection = connEmail;
                SqlDataReader rdEmail = cmdEmail.ExecuteReader();
                
                #endregion



                #region Validate User Data and Proceed
                if (rdUser.HasRows)
                {
                    LabelUNameTaken.Visible = true;
                    LabelUNameTaken.Text = "Username is already taken! Please try again with different one!";
                    LabelUNameTaken.ForeColor = System.Drawing.Color.Red;
                    connUser.Close();
                }
                else if (rdEmail.HasRows)
                {
                    LabelEmailTaken.Visible = true;
                    LabelEmailTaken.Text = "Email address is already taken! Please try again with different one!";
                    LabelEmailTaken.ForeColor = System.Drawing.Color.Red;
                    connEmail.Close();
                }
                else
                {
                    SqlConnection conn = new SqlConnection();
                    conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MyReg.mdf;Integrated Security=True";
                    conn.Open();

                    string insertQuery = "insert into UserRegistration (UserName, FirstName, LastName, DateOfBirth, Email, Password, Country) values (@Uname, @FirstName, @LastName, @DoB, @email, @password, @country)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);

                    com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
                    com.Parameters.AddWithValue("@FirstName", TextBoxFirstName.Text);
                    com.Parameters.AddWithValue("@LastName", TextBoxLastName.Text);
                    com.Parameters.AddWithValue("@DoB", TextBoxDoB.Text.ToString());
                    com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                    com.Parameters.AddWithValue("@password", TextBoxPassword.Text);
                    com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());

                    com.ExecuteNonQuery();
                    Response.AppendHeader("Refresh", "1;url=Manager.aspx");
                    LabelRegistration.Visible = true;
                    LabelRegistration.Text = "Registration is successful!";
                    LabelRegistration.ForeColor = System.Drawing.Color.Green;                             

                    conn.Close();
                }
                #endregion
            }

            catch (Exception ex) 
            {
                Response.Write("Error: " + ex.ToString());
            }
         
        }
    }
}