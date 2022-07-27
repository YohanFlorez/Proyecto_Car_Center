using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CloudinaryDotNet;
using CloudinaryDotNet.Actions;

namespace Proyecto_Car_Center
{
    public partial class SolicitarMantenimiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Imagen()
        {
            // cargar imagen
            int tamaño = FileUpload1.PostedFile.ContentLength;
            byte[] imagenO = new byte[tamaño];
            FileUpload1.PostedFile.InputStream.Read(imagenO, 0, tamaño);
            Bitmap imagenOb = new Bitmap(FileUpload1.PostedFile.InputStream);
            string imagen64 = "data:image/jpg;base64," + Convert.ToBase64String(imagenO);
            Image1.ImageUrl = imagen64;
        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            
            string ruta = null;
            Servidor(ref ruta);
            if (ruta == "nada")
            {
                
                
                Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Tienes que agregar una imagen');", true);


            }
            else
            {
                if (ruta == "imagenM")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Error en formato de imagen');", true);
               
                }
                else
                {
                    Mantenimiento ma = new Mantenimiento();
                    if (ma.RegistroSolicitud(Session["id"].ToString(), TxtMarca.Text, TxtModelo.Text, TxtDescripcion.Text, ruta) == true)
                    {
                        
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Solicitud Registrada Correctamente');", true);
                        Imagen();
                    }
                    else
                    {
                        Response.Write("debe agregar el diligenciar  todos los datos");
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "showstatus", "javascript:alert('Debe agregar el diligenciar  todos los datos');", true);

                    }


                }
            }
        }
        protected void Servidor(ref string ruta)
        {
            string extension;
            Account cuenta = new Account("ecci11111", "828713374347859", "NtqJ7Vw3D8SPNlCjOMlZYl-fvds");
            MemoryStream ms = new MemoryStream();
            ms = new MemoryStream(FileUpload1.FileBytes);
            Cloudinary cloud = new Cloudinary(cuenta);
            var upload = new ImageUploadParams()
            {
                File = new FileDescription(FileUpload1.FileName, ms)
            };
            extension = FileUpload1.FileName.Substring(FileUpload1.FileName.LastIndexOf('.') + 1);
            if (extension == "jpg" || extension == "png" || extension == "gif" || extension == "JPG" || extension == "PNG" || extension == "GIF")
            {
                var uploadR = cloud.Upload(upload);
                if (FileUpload1.FileName == "")
                {
                    ruta = "nada";
                }
                else
                {
                    if (uploadR.SecureUri == null)
                    {
                        ruta = "imagenM";
                    }
                    else
                    {
                        ruta = uploadR.SecureUri.ToString();
                    }
                }
            }
            else
            {
                ruta = "imagenM";
            }
        }
    }
}