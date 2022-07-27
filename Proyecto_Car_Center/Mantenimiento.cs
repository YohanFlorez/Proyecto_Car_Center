using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Proyecto_Car_Center
{
    public class Mantenimiento
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


        public bool RegistroSolicitud(string nombre,string marca,string modelo,string descripcion,string imagen)
        {
            try
            {
                if (conectar())
                {
                    DateTime fecha=DateTime.Now;
                    myCmd = new SqlCommand();
                    myCmd.Connection = this.myCon;
                    myCmd.CommandType = CommandType.StoredProcedure;
                    //se pone el nombre de el metodo que en este caso es agregar datos empleado
                    myCmd.CommandText = string.Format("RegistroSolicitudMantenimiento");
                    //se envia la varible nombre a el procedimiento almacenado
                    myCmd.Parameters.AddWithValue("@CodUsuario", nombre);
                    myCmd.Parameters.AddWithValue("@MarcaVehiculo", marca);
                    myCmd.Parameters.AddWithValue("@Modelo", modelo);
                    myCmd.Parameters.AddWithValue("@Descripcion", descripcion);
                    myCmd.Parameters.AddWithValue("@Imagen", imagen);
                    myCmd.Parameters.AddWithValue("@fecha", fecha);
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