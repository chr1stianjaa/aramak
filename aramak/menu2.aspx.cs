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
            var dbPIZZA2 = db.PIZZAs;

            var newPIZZA2 = new PIZZA2();

            newPIZZA2.Size = txtSize.Text;

            dbPIZZA2.Add(pizzas);
            db.SaveChanges();
            grdPrice.DataBind();
        }
    }
}