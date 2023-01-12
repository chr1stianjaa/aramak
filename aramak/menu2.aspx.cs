using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aramak
{
    public partial class checkout_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfrim_Click(object sender, EventArgs e)
        {
            PIZZADATABASEEntities db = new PIZZADATABASEEntities();
            
            var dbPIZZA2 = db.PIZZA2;

            PIZZA2 newPIZZA2 = new PIZZA2();

            newPIZZA2.Size = txtSize.Text;
            newPIZZA2.Price = int.Parse(txtPrice.Text);

            dbPIZZA2.Add(newPIZZA2);

            db.SaveChanges();

            //grdPrice.DataSource = dbPIZZA2;
            grdPrice.DataBind();

        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("checkout.aspx");
        }
    }
}