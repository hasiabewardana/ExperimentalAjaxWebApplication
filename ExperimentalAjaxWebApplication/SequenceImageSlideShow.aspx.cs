using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AjaxWebApplication
{
    public partial class SequenceImageSlideShow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SetImageUrl();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            SetImageUrl();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Timer1.Enabled)
            {
                Timer1.Enabled = false;
                Button1.Text = "Start slideshow";
            }
            else
            {
                Timer1.Enabled = true;
                Button1.Text = "Stop slideshow";
            }
        }

        private void SetImageUrl()
        {
            if(ViewState["ImageDisplayed"] == null)
            {
                Image1.ImageUrl = "~/Images/1.jpg";
                ViewState["ImageDisplayed"] = 1;
                Label1.Text = "1.jpg";
            }
            else
            {
                int i = (int)ViewState["ImageDisplayed"];
                if (i == 8)
                {
                    Image1.ImageUrl = "~/Images/1.jpg";
                    ViewState["ImageDisplayed"] = 1;
                    Label1.Text = "1.jpg";
                }
                else
                {
                    i++;
                    Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
                    ViewState["ImageDisplayed"] = i;
                    Label1.Text = i.ToString() + ".jpg";
                }
            }
        }
    }
}