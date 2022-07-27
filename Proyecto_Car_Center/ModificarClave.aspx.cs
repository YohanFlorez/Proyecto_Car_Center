using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Car_Center
{
    public partial class ModificarClave : System.Web.UI.Page
    {
        Encriptacion encri = new Encriptacion();
        Usuario usu= new Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCambioClave_Click(object sender, EventArgs e)
        {
            Session["contraseñaU"] = encri.obtenerMD5(txtContraA.Text);
            if (Session["contraseñaU"].ToString() == Session["contraseña"].ToString())
            {

                Session["contraseñaNU"] = encri.obtenerMD5(TxtNuevaClave.Text);
                if(TxtNuevaClave.Text==TxtConfirmarClave.Text)
                {
                    if (usu.nuevaContraseña(Session["contraseñaNU"].ToString(), Session["usuario"].ToString()) == "bien")
                    {


                        Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('La contraseña ha sido editada correctamente');", true);
                    }
                } 
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Contraseña antigua no coincide');", true);

           
                
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}