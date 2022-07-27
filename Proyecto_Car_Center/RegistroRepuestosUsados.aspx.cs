using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Car_Center
{
    public partial class Factura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            Repuesto re = new Repuesto();
            if (re.RegistroUsoRepuesto(int.Parse(DropDownList2.SelectedValue), int.Parse(DropDownList1.SelectedValue.ToString()), int.Parse(TextBox1.Text)) == true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Datos Registrados Correctamente');", true);

                Response.Redirect("RegistroRepuestosUsados.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Debe diligenciar todos los campos');", true);

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}