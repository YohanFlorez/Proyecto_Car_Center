using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Car_Center
{
    public partial class Sesion1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["usuario"].ToString();
            Session["id"] = GridView1.Rows[0].Cells[0].Text;
            Session["Nombre"] = GridView1.Rows[0].Cells[1].Text;
            Session["Apellido"] = GridView1.Rows[0].Cells[2].Text;
            Session["Documento"] = GridView1.Rows[0].Cells[3].Text;
            Session["tipodoc"] = GridView1.Rows[0].Cells[4].Text;
            Session["direccion"] = GridView1.Rows[0].Cells[5].Text;
            Session["correo"] = GridView1.Rows[0].Cells[6].Text;
            Session["contraseña"] = GridView1.Rows[0].Cells[7].Text;
            Session["LogAdmin"] = 1;
            Response.Redirect("MenuAdministrador.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}