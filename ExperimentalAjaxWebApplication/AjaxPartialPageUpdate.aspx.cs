using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxWebApplication
{
    public partial class AjaxPartialPageUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.TimeOfDay.ToString();
            Label2.Text = DateTime.Now.TimeOfDay.ToString();
            Label3.Text = DateTime.Now.TimeOfDay.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(5000);
            Label4.Text = DateTime.Now.TimeOfDay.ToString();
        }
    }
}