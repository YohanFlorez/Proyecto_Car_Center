using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Proyecto_Car_Center
{
    public class ValidacionesUsuarios
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
        public string ValidarUsu(string correo, string clave, int rol, int disponible)
        {
            try
            {
                string a = "mal";
                if (conectar())
                {
                    myCmd = new SqlCommand();
                    myCmd.Connection = this.myCon;
                    myCmd.CommandType = CommandType.StoredProcedure;
                    myCmd.CommandText = string.Format("loginUsuarios2");
                    myCmd.Parameters.AddWithValue("@correo", correo);
                    myCmd.Parameters.AddWithValue("@contrasena", clave);
                    myCmd.Parameters.AddWithValue("@rol", rol);
                    myCmd.Parameters.AddWithValue("@disponible", disponible);
                    SqlDataAdapter adp = new SqlDataAdapter(myCmd);
                    DataTable table = new DataTable();
                    adp.Fill(table);
                    if (table.Rows.Count == 1)
                    {
                        a = "bien";
                    }
                    return a;

                }
                else
                    return a;
            }
            catch (Exception e)
            {
                return "Error: " + e.Message;
            }
            finally
            {
                desconectar();
            }
        }
        public string ValidarCorreo(string correo)
        {
            try
            {
                string a = "mal";
                if (conectar())
                {
                    myCmd = new SqlCommand();
                    myCmd.Connection = this.myCon;
                    myCmd.CommandType = CommandType.StoredProcedure;
                    myCmd.CommandText = string.Format("verCorreos");
                    myCmd.Parameters.AddWithValue("@correo", correo);
                    SqlDataAdapter adp = new SqlDataAdapter(myCmd);
                    DataTable table = new DataTable();
                    adp.Fill(table);
                    if (table.Rows.Count == 1)
                    {
                        a = "bien";
                    }
                    return a;

                }
                else
                    return a;
            }
            catch (Exception e)
            {
                return "Error: " + e.Message;
            }
            finally
            {
                desconectar();
            }
        }
    }
}