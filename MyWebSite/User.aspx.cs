using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace MyWebSite
{
    public partial class User : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                LabelWelcome.Text = "Welcome " + Session["New"].ToString() + "!" + " Let's check your math skills!" ;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            ButtonCheck.Visible = false;
        }

        protected void ButtonLogOut_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }

        #region Buttons
        protected void ButtonStart_Click(object sender, EventArgs e)
        {
            RandomNumbers();
            Erase();
            ButtonCheck.Visible = true;
        }

       
        protected void ButtonCheck_Click(object sender, EventArgs e)
        {
            CheckAnswer();
            ButtonCheck.Visible = false;
        }
        #endregion

        private void CheckAnswer()
        {
            int sum = int.Parse(TextBoxAdd.Text);
            int difference = int.Parse(TextBoxMinus.Text);
            int product = int.Parse(TextBoxMul.Text);
            int quotient = int.Parse(TextBoxDiv.Text);
            int realSum = int.Parse(Session["addLeft"].ToString()) + int.Parse(Session["addRight"].ToString());
            int realDifference = int.Parse(Session["minusLeft"].ToString()) - int.Parse(Session["minusRight"].ToString());
            int realProduct = int.Parse(Session["multiplyLeft"].ToString()) * int.Parse(Session["multiplyRight"].ToString());
            int realQuotient = int.Parse(Session["divLeft"].ToString()) / int.Parse(Session["divRight"].ToString());                

            LabelResultsSum.Visible = true;
            LabelResultsDifference.Visible = true;
            LabelResultsProduct.Visible = true;
            LabelResultsQuotient.Visible = true;

            if (sum == realSum)
            {                      
                LabelResultsSum.Text = "Correct " + (Session["addLeft"].ToString() + " + " + Session["addRight"].ToString() + " = " + sum + "</br>");
                LabelResultsSum.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                LabelResultsSum.Text = "Wrong " + (Session["addLeft"].ToString() + " + " + Session["addRight"].ToString() + " = " + realSum + "</br>");
                LabelResultsSum.ForeColor = System.Drawing.Color.Red;
            }                 
            
            if (difference == realDifference)
            {               
                LabelResultsDifference.Text = "Correct " + (Session["minusLeft"].ToString() + "-" + Session["minusRight"].ToString() + " = " + difference + "</br>");
                LabelResultsDifference.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                LabelResultsDifference.Text = "Wrong " + (Session["minusLeft"].ToString() + " - " + Session["minusRight"].ToString() + " = " + realDifference + "</br>");
                LabelResultsDifference.ForeColor = System.Drawing.Color.Red;
            }

            if (product == realProduct)
            {              
                LabelResultsProduct.Text = "Correct " + (Session["multiplyLeft"].ToString() + " * " + Session["multiplyRight"].ToString() + " = " + product + "</br>");
                LabelResultsProduct.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                LabelResultsProduct.Text = "Wrong " + (Session["multiplyLeft"].ToString() + " * " + Session["multiplyRight"].ToString() + " = " + realProduct + "</br>");
                LabelResultsProduct.ForeColor = System.Drawing.Color.Red;
            }

            if (quotient == realQuotient)
            {             
                LabelResultsQuotient.Text = "Correct " + (Session["divLeft"].ToString() + " / " + Session["divRight"].ToString() + " = " + quotient + "</br>");
                LabelResultsQuotient.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                LabelResultsQuotient.Text = "Wrong " + (Session["divLeft"].ToString() + " / " + Session["divRight"].ToString() + " = " + realQuotient + "</br>");
                LabelResultsQuotient.ForeColor = System.Drawing.Color.Red;
            }          
        }

        #region Empty Boxes and Labels
        private void Erase()
        {
            LabelResultsSum.Text = "";
            LabelResultsDifference.Text = "";
            LabelResultsProduct.Text = "";
            LabelResultsQuotient.Text = "";

            TextBoxAdd.Text = "";
            TextBoxMinus.Text = "";
            TextBoxMul.Text = "";
            TextBoxDiv.Text = "";
        }     
        #endregion

        private void RandomNumbers()
        {
            int addLeft, addRight, minusLeft, minusRight, multiplyLeft, multiplyRight, divLeft, divRight, temp;
            Random randomizer = new Random();

            addLeft = randomizer.Next(101);
            Session["addLeft"] = addLeft;
            addRight = randomizer.Next(101);
            Session["addRight"] = addRight;
            minusLeft = randomizer.Next(1, 101);
            Session["minusLeft"] = minusLeft;
            minusRight = randomizer.Next(1, minusLeft);
            Session["minusRight"] = minusRight;
            multiplyLeft = randomizer.Next(11);
            Session["multiplyLeft"] = multiplyLeft;
            multiplyRight = randomizer.Next(11);
            Session["multiplyRight"] = multiplyRight;
            divRight = randomizer.Next(2, 11);
            Session["divRight"] = divRight;
            temp = randomizer.Next(2, 11);
            divLeft = divRight * temp;
            Session["divLeft"] = divLeft;

            LabelAddLeft.Text = addLeft.ToString();
            LabelAddRight.Text = addRight.ToString();
            LabelMinusLeft.Text = minusLeft.ToString();
            LabelMinusRight.Text = minusRight.ToString();
            LabelMultiplyLeft.Text = multiplyLeft.ToString();
            LabelMultiplyRight.Text = multiplyRight.ToString();
            LabelDivLeft.Text = divLeft.ToString();
            LabelDivRight.Text = divRight.ToString();
        }
     }
}