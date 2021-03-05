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
    /// Interaction logic for AltaPatente.xaml
    /// </summary>
    public partial class AltaPatente : Window
    {
        //Inicializa la ventana
        public AltaPatente()
        {
            InitializeComponent();
        }

        //Método que setea los datos y llama al view model para que los guarde en la base de datos
        public void btnAlta_Click(object sender, RoutedEventArgs e)
        {
            Patente patente = new Patente();

            patente.Marca = txtnuevaMarca.Text;
            patente.Modelo = txtnuevoModelo.Text;
            patente.Nro_Patente = txtnuevaPatente.Text;

            if (patente.Marca != "" && patente.Modelo != "" && patente.Nro_Patente != "")
            {
                ViewModels.PatenteViewModel.Alta(patente.Nro_Patente, patente.Modelo, patente.Marca);
            }
            else
            {
                MessageBox.Show("Debe completar todos los campos para realizar el registro.");
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
