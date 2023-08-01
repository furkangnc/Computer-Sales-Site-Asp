using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bilgisayar_Satış_Sitesi
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataList1.Visible = true;
            DataList2.Visible = false;
            DataList3.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataList2.Visible = true;
            DataList1.Visible = false;
            DataList3.Visible = false;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataList3.Visible = true;
            DataList2.Visible = false;
            DataList1.Visible = false;
        }
    }
}
