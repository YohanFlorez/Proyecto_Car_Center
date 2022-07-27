using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Car_Center
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ValidacionesUsuarios val = new ValidacionesUsuarios();
        Encriptacion encrip = new Encriptacion();
        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            string contraseñaU;
            contraseñaU = encrip.obtenerMD5(TxtClave.Text);
            if (val.ValidarUsu(TxtCorreo.Text, contraseñaU.ToString(), 2, 1) == "bien")
            {
                //admin
                Session["usuario"] = TxtCorreo.Text;
                Response.Redirect("Sesion1.aspx");
            }
            if (val.ValidarUsu(TxtCorreo.Text, contraseñaU.ToString(), 3, 1) == "bien")
            {
                //admin
                Session["usuario"] = TxtCorreo.Text;
                Response.Redirect("Sesion3.aspx");
            }
            if (val.ValidarUsu(TxtCorreo.Text, contraseñaU.ToString(), 1, 1) == "bien")
            {
                //usuario
                Session["usuario"] = TxtCorreo.Text;
                Response.Redirect("Sesion2.aspx");

            }
            if (val.ValidarUsu(TxtCorreo.Text, contraseñaU.ToString(), 0, 0) == "bien")
            {

                // lblMensaje.Text = "Usuario inhabilitado, Comuniqusese con petstore";

                Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Usuario inhabilitado');", true);


            }
            if (val.ValidarCorreo(TxtCorreo.Text) == "bien")
            {
               
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Contraseña incorrecta');", true);
               
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Correo no existe');", true);

                
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistroUsuarios.aspx");
        }
    }
}