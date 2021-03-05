using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WPF_de_Joanna_Sakugawa.Models;

namespace WPF_de_Joanna_Sakugawa.Views
{
    /// <summary>
    /// Interaction logic for EditarPatente.xaml
    /// </summary>
    public partial class EditarPatente : Window
    {
        //Inicializa la ventana
        public EditarPatente()
        {
            InitializeComponent();
        }

        //Método que setea los datos y llama al view model para que los guarde en la base de datos
        private void btnGrabar_Click(object sender, RoutedEventArgs e)
        {
            Patente patente = new Patente();

            patente.Nro_Patente_Modificar = txtPatente.Text;

            patente.Marca = txtnuevaMarca.Text;
            patente.Modelo = txtnuevoModelo.Text;
            patente.Nro_Patente = txtnuevaPatente.Text;

            if (patente.Nro_Patente != "" && patente.Modelo != "" && patente.Marca != "" && patente.Nro_Patente_Modificar != "")
            {
                ViewModels.PatenteViewModel.Editar_Patente(patente.Nro_Patente, patente.Modelo, patente.Marca, patente.Nro_Patente_Modificar);
            }
            else
            {
                MessageBox.Show("Debe completar los campos requeridos para proceder..");
            }

            
        }

        //Método que cierra la ventana actual y regresa a la anterior
        private void btnAtras_Click(object sender, RoutedEventArgs e)
        {
            MainWindow ventana1 = new MainWindow();
            ventana1.Show();

            Close();
        }
    }
}
