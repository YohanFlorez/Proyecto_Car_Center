using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Car_Center
{
    public partial class RegistrarRepuesto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegistro_Click(object sender, EventArgs e)

        {
            Repuesto re = new Repuesto();

            if (re.RegistroRepuesto(TxtNombre.Text,int.Parse(TxtPrecioUnit.Text) ,int.Parse(TxtUnidades.Text) )== true)
            {
                
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Datos Registrados Correctamente');", true);

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