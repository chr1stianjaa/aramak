using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aramak
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PIZZADATABASEEntities db = new PIZZADATABASEEntities();
            var dbCustomers = db.Customers;

            var newCustomer = new Customer();

            newCustomer.Customer_Name = ""+checkname.Text;
            newCustomer.Customer_E_mail = ""+checkemail.Text;

            dbCustomers.Add(newCustomer);
            db.SaveChanges();

            grdCustomer.DataBind();
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("completed.aspx");
        }
    }
}