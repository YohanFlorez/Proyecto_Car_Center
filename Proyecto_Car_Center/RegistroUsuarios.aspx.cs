using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Car_Center
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //debajo de rol va todas las tablas del proyecto
            Usuario usuario = new Usuario();
            Encriptacion encriptacion = new Encriptacion();
            string contraseñaU = encriptacion.obtenerMD5(Txtcontraseña.Text);
            if (usuario.RegistroUsuario(TxtNombre.Text, TxtApellido.Text,TxtTelefono.Text, Txtdireccion.Text, Txtndocumento.Text, int.Parse(DropDownList1.SelectedValue), Txtcorreo.Text, contraseñaU) == true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Datos Registrados Correctamente');", true);

                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("debe agregar el nombre en el cuadro de texto");
            }
        }
    }
}