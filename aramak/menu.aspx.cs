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
            lblfromgrid.Text = GridView1.SelectedValue.ToString();

            int idx = 2;
            lbltype.Text = GridView1.SelectedRow.Cells[idx].Text;
            int idxx = 3;
            lblprice.Text = GridView1.SelectedRow.Cells[idxx].Text;
            double toTotal = Double.Parse((lblprice.Text).ToString().Trim());

            CalculateTotal(toTotal);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CalculateTotal(0);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            CalculateTotal(0);
        }

        protected void PineappleRB_CheckedChanged(object sender, EventArgs e)
        {
            CalculateTotal(0);
        }

        protected void ChillisRB_CheckedChanged(object sender, EventArgs e)
        {
            CalculateTotal(0);
        }

        protected void MushroomRB_CheckedChanged(object sender, EventArgs e)
        {
            CalculateTotal(0);
        }

        private void CalculateTotal(double fromGrid)
        {

            double total = 0.0;

            if (PineappleRB.Checked)
            {
                total = 0.45;
            }

            else if (ChillisRB.Checked)
            {
                total = total = 0.50;
            }

            else
            {
                total = 0.55;
            }

            total = total + fromGrid;
            resultLabel3.Text = "£" + total.ToString();
        }
    }
}