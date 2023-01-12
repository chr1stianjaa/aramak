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
            Response.Redirect("menu2.aspx");
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            PIZZADATABASEEntities db = new PIZZADATABASEEntities();
            var dbPIZZA = db.PIZZAs;
            
            PIZZA newPIZZA = new PIZZA();

            newPIZZA.Type_of_Pizza = txtPizza.Text;
            newPIZZA.Price = int.Parse(txtPrice.Text);

            dbPIZZA.Add(newPIZZA);
            db.SaveChanges();
            GridView1.DataBind();
        }
    }
}