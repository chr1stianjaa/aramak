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
            CalculateTotal(1);
        }

        protected void PineappleRB_CheckedChanged(object sender, EventArgs e)
        {
            CalculateTotal(2);
        }

        protected void ChillisRB_CheckedChanged(object sender, EventArgs e)
        {
            CalculateTotal(3);
        }

        protected void MushroomRB_CheckedChanged(object sender, EventArgs e)
        {
            CalculateTotal(4);
        }

        private void CalculateTotal(double fromGrid)
        {

            double total = 0.0;

            if (PineappleRB.Checked)
            {
                total = 0.45;
                lbltopping.Text = "Pineapple";
            }

            else if (ChillisRB.Checked)
            {
                total = total = 0.50;
                lbltopping.Text = "Chillis";
            }

            else
            {
                total = 0.55;
                lbltopping.Text = "Mushroom";
            }
            try
            {
                if (fromGrid!=0)
                {
                    lblfromgrid2.Text = GridView2.SelectedValue.ToString();

                    int idxxx = 2;
                    lblsize.Text = GridView2.SelectedRow.Cells[idxxx].Text;
                    int idxxxx = 3;
                    lblprice2.Text = GridView2.SelectedRow.Cells[idxxxx].Text;
                    double toTotal2 = Double.Parse((lblprice2.Text).ToString().Trim());

                    total = total + fromGrid + toTotal2;
                    resultLabel3.Text = "£" + total.ToString();

                    PIZZADATABASEEntities db = new PIZZADATABASEEntities();
                    var dbOrder = db.Orders;

                    var newOrder = new Order();

                    newOrder.Type = "" + lbltype.Text.ToString();
                    newOrder.Size = "" + lblsize.Text;
                    newOrder.Topping = "" + lbltopping.Text;
                    newOrder.CustomerName = "" + cstmertxtBox.Text;
                    newOrder.TotalCost = "" + resultLabel3.Text;

                    dbOrder.Add(newOrder);
                    db.SaveChanges();

                    GridView3.DataBind();

                }

            }
            catch (Exception)
            {

                
            }
            
        }

        protected void checkoutbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("checkout.aspx");
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            CalculateTotal(5);
        }

        protected void cstmertxtBox_TextChanged(object sender, EventArgs e)
        {
            CalculateTotal(6);
        }
    }
}