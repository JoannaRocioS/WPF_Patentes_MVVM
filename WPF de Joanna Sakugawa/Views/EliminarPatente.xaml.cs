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
    /// Interaction logic for EliminarPatente.xaml
    /// </summary>
    public partial class EliminarPatente : Window
    {
        //Inicializa la ventana
        public EliminarPatente()
        {
            InitializeComponent();
        }

        //Método que setea el nro_patente a eliminar y llama al viewmodel para conectarse a la base de datos
        private void btnAlta_Click(object sender, RoutedEventArgs e)
        {
            Patente patente = new Patente();

            patente.Nro_Patente = txtPatente.Text;

            if (patente.Nro_Patente != "")
            {
                ViewModels.PatenteViewModel.Eliminar_Patente(patente.Nro_Patente);
            }
            else
            {
                MessageBox.Show("Debe completar el campo requerido para proceder.");
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
