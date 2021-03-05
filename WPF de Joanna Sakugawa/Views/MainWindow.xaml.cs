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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using WPF_de_Joanna_Sakugawa.Views;
using WPF_de_Joanna_Sakugawa.Models;

namespace WPF_de_Joanna_Sakugawa
{
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        //Inicializa la ventana principal del programa
        public MainWindow()
        {
            InitializeComponent();
        }

        //Interacción que lleva a la ventana de ALTA
        public void btnAlta_Click(object sender, RoutedEventArgs e)
        {
            AltaPatente ventana2 = new AltaPatente();
            ventana2.Show();

            Close();
        }

        //Interacción que cierra el programa
        private void btnSalir_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        //Interacción que lleva a la ventana de MODIFICACIÓN
        private void btnMod_Click(object sender, RoutedEventArgs e)
        {
            EditarPatente ventana3 = new EditarPatente();
            ventana3.Show();

            Close();
        }

        //Interacción que lleva a la ventana de BAJA/ELIMINAR
        private void btnBaja_Click(object sender, RoutedEventArgs e)
        {
            EliminarPatente ventana4 = new EliminarPatente();
            ventana4.Show();

            Close();
        }
    }
}
