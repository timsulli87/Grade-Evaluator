using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeLab6_TSullivan
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Local variables
            double grade;
            double participation;
            double result;
            string evaluation;
            string input;

            //Clear lblResult           
            lblResult.Text = "";

            //Get variable values
            input = txtGrade.Text;
            if (double.TryParse(input, out grade))      //Validate input in txtGrade
            {
                lblTextCheck.Text = "";     //Clear lblTextCheck
                grade = double.Parse(txtGrade.Text);
                participation = double.Parse(ddlParticipation.SelectedItem.Value);
                result = (grade * 0.9) + participation;
                if (result > 90)        //Determine evaluation text
                {
                    evaluation = "Excellent";
                }
                else if (result > 80)
                {
                    evaluation = "Very Good";
                }
                else if (result > 70)
                {
                    evaluation = "Good";
                }
                else if (result > 60)
                {
                    evaluation = "Fair";
                }
                else
                {
                    evaluation = "Poor";
                }

                //Display results
                lblResult.Text = "Calculated Grade " + "<b style='color:red';>" + result.ToString() + "</b>" + "<br />" + "Grade Evaluation " +
                    "<b style='color:red';>" + evaluation + "</b>";
            }
            else
            {
                lblTextCheck.Text = " Please enter a grade.";       //If no/incorrect input is entered in txtGrade
            }
            
            
            
        }
    }
}