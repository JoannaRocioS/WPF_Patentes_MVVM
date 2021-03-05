using System;
using WPF_de_Joanna_Sakugawa.Models;
using System.Windows;
using System.Data;
using System.Data.SqlClient;
using WPF_de_Joanna_Sakugawa.Views;
using System.Configuration;
using System.Windows.Controls;

namespace WPF_de_Joanna_Sakugawa.ViewModels
{
    public class PatenteViewModel : Patente
    {

        [Obsolete]
        //Conexión a la base de datos
        private SqlConnection myConexion()
        {
            return new SqlConnection(ConfigurationSettings.AppSettings["conexion"]);
        }

        [Obsolete]
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                SqlConnection conn = myConexion();
                SqlCommand comm = new SqlCommand("SELECT * FROM Patentes", conn);

                conn.Open();
                Nro_Patente = comm.ExecuteScalar().ToString();
                comm.Dispose();
                conn.Close();

            }
            catch
            {
                MessageBox.Show("Error");
            }
        }

        //Método para dar de alta los datos a la base de datos
        public static void Alta(string Nro_Patente, string Modelo, string Marca)
        {
            Patente patente = new Patente();

            string sql = "INSERT INTO Patentes (Nro_Patente, Marca, Modelo)"
                          + "VALUES ('" + Nro_Patente + "', '" + Marca + "', '" + Modelo + "')";

            SqlConnection conn = new SqlConnection();
            conn = new SqlConnection("server=.\\ ; database=BDPatente ; integrated security = true");
            conn.Open();


            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.CommandType = CommandType.Text;
            try
            {
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                    MessageBox.Show("¡Registro ingresado correctamente!");
            }
            catch
            {
                MessageBox.Show("Se ha ingresado mal los datos, revise que sean correctos");
            }
            finally
            {
                // Cierro la Conexión.
                conn.Close();
            }
        }

        //Método que elimina la fila completa en la tabla de la base de datos Patentes
        public static void Eliminar_Patente(string Nro_Patente)
        {
            if (Nro_Patente != null)
            {
                // Si hago click en el botón eliminar procedo a eliminar en la Base de Datos.
                string sql = "DELETE FROM Patentes WHERE Nro_Patente='" + Nro_Patente + "'";

                SqlConnection con = new SqlConnection("server=.\\ ; database=BDPatente ; integrated security = true");
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.Text;
                con.Open();

                try
                {
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                        MessageBox.Show("Se ha dado de baja correctamente.");
                    else
                    {
                        MessageBox.Show("El número de patente ingresado no se encuentra en la base de datos.");
                    }
                }

                catch
                {
                    MessageBox.Show("No se ha dado de baja ningún registro, verifique que el número de patente sea correcto.");
                }

                finally
                {
                    // Cierro la Conexión.
                    con.Close();
                }
            }
        }

        //Método que edita una patente específica y lo guarda en la base de datos
        public static void Editar_Patente(string Nro_Patente, string Modelo, string Marca, string Nro_Patente_Modificar)
        {
            string sql = "UPDATE Patentes SET Nro_Patente ='" + Nro_Patente + "',  Marca='" + Marca + "', Modelo='" + Modelo + "' WHERE Nro_Patente ='" + Nro_Patente_Modificar + "'";

            SqlConnection con = new SqlConnection("server=.\\ ; database=BDPatente ; integrated security = true");
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            con.Open();

            try
            {
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                    MessageBox.Show("¡Registro modificado correctamente!");
                else
                {
                    MessageBox.Show("La patente ingresada no se encuentra en la base de datos.");
                }
            }
            catch
            {
                MessageBox.Show("Verifique que los datos ingresados sean correctos..");
            }
            finally
            {
                // Cierro la Conexión.
                con.Close();
            }
        }

        //Método para buscar patentes.

        //private void btnBuscar_Click(object sender, RoutedEventArgs e)
        //{
        //    SqlConnection conn = new SqlConnection();
        //    conn = new SqlConnection("server=.\\ ; database=BDPatente ; integrated security = true");
        //    conn.Open();
        //    string query = "SELECT * FROM Patentes WHERE Nro_Patente = @Nro_Patente";
        //    SqlCommand cmd = new SqlCommand(query, conn);
        //    cmd.Parameters.AddWithValue("@Nro_Patente", txtbusqueda.Text);
        //    if (conn.State == ConnectionState.Closed)
        //    {
        //        conn.Open();
        //    }
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    if (dr.Read())
        //    {
        //        txtPatente.Text = dr["Nro_Patente"].ToString();
        //        txtMarca.Text = dr["Marca"].ToString();
        //        txtModelo.Text = dr["Modelo"].ToString();
        //    }

        //    conn.Close();

        //}
    }
}
