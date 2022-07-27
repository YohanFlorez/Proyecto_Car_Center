using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Proyecto_Car_Center
{
    public class Repuesto
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


        public bool RegistroRepuesto(string nombre,int preciounit,int unidadesdispo)
        {
            try
            {
                if (conectar())
                {
                    myCmd = new SqlCommand();
                    myCmd.Connection = this.myCon;
                    myCmd.CommandType = CommandType.StoredProcedure;
                    //se pone el nombre de el metodo que en este caso es agregar datos empleado
                    myCmd.CommandText = string.Format("registroRepuesto");
                    //se envia la varible nombre a el procedimiento almacenado
                    myCmd.Parameters.AddWithValue("@Nombre", nombre);
                    myCmd.Parameters.AddWithValue("@PrecioUnitario", preciounit);
                    myCmd.Parameters.AddWithValue("@UnidadesDisponibles", unidadesdispo);


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

        public bool RegistroUsoRepuesto(int Solicitud, int Repuesto, int unidades)
        {
            try
            {
                if (conectar())
                {
                    DateTime fecha = DateTime.Now;
                    myCmd = new SqlCommand();
                    myCmd.Connection = this.myCon;
                    myCmd.CommandType = CommandType.StoredProcedure;
                    //se pone el nombre de el metodo que en este caso es agregar datos empleado
                    myCmd.CommandText = string.Format("RegistroVentaRepuesto");
                    //se envia la varible nombre a el procedimiento almacenado
                    myCmd.Parameters.AddWithValue("@Solicitud", Solicitud);
                    myCmd.Parameters.AddWithValue("@Repuesto", Repuesto);
                    myCmd.Parameters.AddWithValue("@NrepuestosVendidos", unidades);
                    myCmd.Parameters.AddWithValue("@Fecha", fecha);


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