using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AjaxWebApplication
{
    public partial class XmlImageSlideShow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetImageUrl();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            int i = (int)ViewState["ImageOrder"];
            i++;
            ViewState["ImageOrder"] = i;

            DataRow dr = ((DataSet)ViewState["ImageData"]).Tables["image"].Select().FirstOrDefault(x => x["order"].ToString() == i.ToString());

            if (dr != null)
            {
                Image1.ImageUrl = "~/OriginalImages/" + dr["name"].ToString();
                lblImageName.Text = dr["name"].ToString();
                lblImageOrder.Text = dr["order"].ToString();
            }
            else
            {
                SetImageUrl();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Timer1.Enabled)
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
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/Data/ImageData.xml"));
            ViewState["ImageData"] = ds;
            ViewState["ImageOrder"] = 1;

            DataRow dr = ds.Tables["image"].Select().FirstOrDefault(x => x["order"].ToString() == "1");
            Image1.ImageUrl = "~/OriginalImages/" + dr["name"].ToString();
            lblImageName.Text = dr["name"].ToString();
            lblImageOrder.Text = dr["order"].ToString();
        }
    }
}