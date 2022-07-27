using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Proyecto_Car_Center
{
    public class Usuario
    {
  
            SqlConnection myCon;
            SqlCommand myCmd;
            public bool conectar()
            {
                try
                {
                    myCon = new SqlConnection(ConfigurationSettings.AppSettings["cadCon"].ToString());
                    myCon.Open();
                    return true;
                }
                catch (Exception e)
                {
                    return false;
                }
            }
            public void desconectar()
            {
                if (myCon.State == ConnectionState.Open)
                    myCon.Close();
            }


            public bool Registrartipodoc(string nombre)
            {
                try
                {
                    if (conectar())
                    {
                        myCmd = new SqlCommand();
                        myCmd.Connection = this.myCon;
                        myCmd.CommandType = CommandType.StoredProcedure;
                        //se pone el nombre de el metodo que en este caso es agregar datos empleado
                        myCmd.CommandText = string.Format("registrarTipoDocumentos");
                        //se envia la varible nombre a el procedimiento almacenado
                        myCmd.Parameters.AddWithValue("nombre", nombre);
                        myCmd.ExecuteNonQuery();
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }

                catch (Exception e)
                {
                    return false;
                }
                finally
                {
                    desconectar();
                }
            }

            public bool RegistroUsuario(string nombre, string apellido, string telefono, string direccion, string ndocumento, int tipodoc, string correo, string clave)
            {
                try
                {
                    if (conectar())
                    {
                        myCmd = new SqlCommand();
                        myCmd.Connection = this.myCon;
                        myCmd.CommandType = CommandType.StoredProcedure;
                        //se pone el nombre de el metodo que en este caso es agregar datos empleado
                        myCmd.CommandText = string.Format("RegistrarUsuario");
                        myCmd.Parameters.AddWithValue("@Nombre", nombre);
                        myCmd.Parameters.AddWithValue("@Apellido", apellido);
                        myCmd.Parameters.AddWithValue("@NumDocumento", ndocumento);
                        myCmd.Parameters.AddWithValue("@TipoDocumento", tipodoc);
                        myCmd.Parameters.AddWithValue("@Direccion", direccion);
                        myCmd.Parameters.AddWithValue("@Correo", correo);
                        myCmd.Parameters.AddWithValue("@Contrasena", clave);
                        myCmd.ExecuteNonQuery();
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
                catch (Exception e)
                {
                    return false;
                }
            }


            public string nuevaContraseña(string contraseña, string correo)
            {
                try
                {
                    if (conectar())
                    {
                        myCmd = new SqlCommand();
                        myCmd.Connection = this.myCon;
                        myCmd.CommandType = CommandType.StoredProcedure;
                        myCmd.CommandText = string.Format("nuevaClave");
                        myCmd.Parameters.AddWithValue("@correo", correo);
                        myCmd.Parameters.AddWithValue("@contrasena", contraseña);
                        myCmd.ExecuteNonQuery();
                        return "bien";
                    }
                    else
                        return "No se logró conectar";
                }
                catch (Exception e)
                {
                    //return "Error: " + e.Message;
                    return "Error";
                }
                finally
                {
                    desconectar();
                }

            }




    }
}