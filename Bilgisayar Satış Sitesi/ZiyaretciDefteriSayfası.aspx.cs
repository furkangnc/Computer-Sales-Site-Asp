using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bilgisayar_Satış_Sitesi
{
    public partial class ZiyaretciDefteriSayfası : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Kaydet_Click(object sender, EventArgs e)
        {

            ObjectDataSource1.Insert();
            MultiView1.ActiveViewIndex = 1;


        }
    }
}