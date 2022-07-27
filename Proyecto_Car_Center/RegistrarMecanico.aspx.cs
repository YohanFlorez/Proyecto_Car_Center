using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Car_Center
{
    public partial class RegistrarMecanico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Txtndocumento_TextChanged(object sender, EventArgs e)
        {
            Mecanico me = new Mecanico();
            if (me.RegistroMecanico(TxtNombre.Text, TxtNombre0.Text,TxtApellido.Text,TxtSegundoApellido.Text,Txtndocumento.Text,int.Parse(DropDownList1.SelectedValue),TxtTelefono.Text,Txtdireccion.Text) == true)
            {
               
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Datos Registrados Correctamente');", true);

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Debe diligenciar todos los campos');", true);
            }
        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}