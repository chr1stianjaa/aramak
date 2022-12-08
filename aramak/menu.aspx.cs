using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aramak
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("summary.aspx");
        }

        protected void peppizza_CheckedChanged(object sender, EventArgs e)
        {
            Calculatetotal();
        }

        protected void margpizza_CheckedChanged(object sender, EventArgs e)
        {
            Calculatetotal();
        }

        protected void ninepizza_CheckedChanged(object sender, EventArgs e)
        {
            Calculatetotal();
        }

        protected void twelvepizza_CheckedChanged(object sender, EventArgs e)
        {
            Calculatetotal();
        }

        private void Calculatetotal()
        {
            double total = 0.0;

            if (peppizza.Checked)
            {
                total = 3.80;
            }
            else if (margpizza.Checked)
            {
                total = 3.60;
            }

            if (ninepizza.Checked)
            {
                total = total + 1;
            }
            else if (twelvepizza.Checked)
            {
                total = total + 2;
            }

            resultLabel.Text = "£" + total.ToString();
        }

        protected void totalbutton_Click(object sender, EventArgs e)
        {
            Calculatetotal();
        }
    }
}