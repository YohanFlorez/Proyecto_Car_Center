using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Proyecto_Car_Center
{
    public class Mecanico
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
        public bool RegistroMecanico(string Pnombre,string Snombre,string Papellido,string Sapellido,string Ndocumento,int Tipodoc,string Telefono,string Direccion)
        {
            try
            {
                if (conectar())
                {
                    myCmd = new SqlCommand();
                    myCmd.Connection = this.myCon;
                    myCmd.CommandType = CommandType.StoredProcedure;
                    //se pone el nombre de el metodo que en este caso es agregar datos empleado
                    myCmd.CommandText = string.Format("registroMecanico");
                    //se envia la varible nombre a el procedimiento almacenado
                    myCmd.Parameters.AddWithValue("@PrimerNombre", Pnombre);
                    myCmd.Parameters.AddWithValue("@SegundoNombre", Snombre);
                    myCmd.Parameters.AddWithValue("@PrimerApellido", Papellido);
                    myCmd.Parameters.AddWithValue("@SegundoApellido", Sapellido);
                    myCmd.Parameters.AddWithValue("@NDocumento", Ndocumento);
                    myCmd.Parameters.AddWithValue("@TipoDocumento", Tipodoc);
                    myCmd.Parameters.AddWithValue("@Telefono", Telefono);
                    myCmd.Parameters.AddWithValue("@Direccion", Direccion);


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
    }
}