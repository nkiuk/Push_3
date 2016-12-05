using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site_Demos_CalculatorDemo : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CalculateButton_Click(object sender, EventArgs e)
    {
        if (ValueBox1.Text.Length > 0 && ValueBox2.Text.Length > 0)
        {
            Calculator oCalculator = new Calculator();
            double result = 0;
            double value1 = Convert.ToDouble(ValueBox1.Text);
            double value2 = Convert.ToDouble(ValueBox2.Text);

            switch (OperatorList.SelectedValue)
            {
                case "+":
                    result = oCalculator.Add(value1, value2); 
                    break;
                
                case "-":
                    result = oCalculator.Subtract(value1, value2);
                    break;

                case "*":
                    result = oCalculator.Multiply(value1, value2);
                    break;

                case "/":
                    result = oCalculator.Divide(value1, value2);
                    break;
            }
            ResultLabel.Text = result.ToString();
        }
        else
        {
            ResultLabel.Text = string.Empty;
        }
    }
}