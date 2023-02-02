using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aramak
{
    public partial class TestMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalculateBtn_Click(object sender, EventArgs e)
        {
            double total = 0.0;

            if (MargheritaRadioBtn.Checked)
            {
                total = 3.60;
                Typelbl.Text = "Margherita";
            }
            else if (PepperoniRadioBtn.Checked)
            {
                total = 3.80;
                Typelbl.Text = "Pepperoni";
            }

            if (NineRadioBtn.Checked)
            {
                total = total + 0.50;
                Sizelbl.Text = "Nine Inches";
            }
            else if (TwelveRadioBtn.Checked)
            {
                total = total + 1.50;
                Sizelbl.Text = "Twelve Inches";
            }

            if (MushroomCheckBox.Checked)
            {
                total = total + 0.45;
                Toppinglbl.Text = "Mushroom";
            }
            else if (ChillisCheckBox.Checked)
            {
                total = total + 0.50;
                Toppinglbl.Text = "Chillis";
            }
            else
            {
                total = total + 0.55;
                Toppinglbl.Text = "Pineapple";
            }

            PIZZADATABASEEntities db = new PIZZADATABASEEntities();
            var dbTestMenu = db.TestMenus;

            var newTestMenu = new TestMenu();

            newTestMenu.Type = "" + Typelbl.Text;
            newTestMenu.Toppin = "" + Toppinglbl.Text;
            newTestMenu.Size = "" + Pricelbl.Text;
            newTestMenu.Price = "" + Sizelbl.Text;
            newTestMenu.CustomerName = "" + NameTextBox.Text;

            dbTestMenu.Add(newTestMenu);
            db.SaveChanges();

            TestGridView.DataBind();

            Pricelbl.Text = "Total: £" + total.ToString();
        }
    }
}