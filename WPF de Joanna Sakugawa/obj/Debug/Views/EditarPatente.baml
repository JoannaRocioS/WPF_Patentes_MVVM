   M S B A M L   `   `   `  ����Q  MWPF de Joanna Sakugawa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:WPF_de_Joanna_Sakugawa.ViewsWPF_de_Joanna_Sakugawa.Views  5   	   U/clr-namespace:WPF_de_Joanna_Sakugawa.ViewModels!WPF_de_Joanna_Sakugawa.ViewModels  5   	   0    *WPF_de_Joanna_Sakugawa.Views.EditarPatente   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:WPF_de_Joanna_Sakugawa.Views     5   	   >vm/clr-namespace:WPF_de_Joanna_Sakugawa.ViewModels     5   	     � Title$  Editar Patente��5	   	   $	��450��6    $	��800��6-    � DataContext 5
      8   2WPF_de_Joanna_Sakugawa.ViewModels.PatenteViewModel  5   
   ��5      �� 5   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5      �  � Color$ Black��6    � Offset$ 0Q�6)   � 5      $ 	#FF11A9C7��6   $ 1Q�6-   5      .��5      � $��0,5,4,0q�6   $	��413��6   $	��Top=�6)   ��5   
   �� 5      $ 0.5,1&�6"    � MappingMode$ RelativeToBoundingBox=�63   $ 0.5,0&�6W   .��5      � $ 	#FF061B1B��6   $ 1Q�61   � 5      $ 	#FF2DAAB1��6   � 5      $ 	#FF020909��6   $ 1Q�61   � 5      $ Black��6   $ 1Q�6-   � 5      $ 	#FFC5CCE4��6   $ 0.833Q�61   5      .+�5   
   �� -   5        $��btnAlta��5   N   $��29��6   $��Right=�6   $��0,243,367,0q�69   $	��Top=�6]   $��96��6u   ��6�   Z�  J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      .��5       Grabar5!      �� 5"   
   -   5         ��Name$ 
lblPatente��5"   0   $��52��6   $��
0,94,406,0q�6   $	��Top=�6D   $��Right=�6\   $	��302��6x   $2��,
Ingrese el número de patente a modificar
��6�   $��13(�6�   �� 5#   
   -   5        $ lblMarca��5#   '   $��0,238,554,141q�6   $��Right=�69   $	��154��6U   $��Ingrese Marca:��6a   $��13(�6z   �� 5$   
   -   5        $ 	lblModelo��5$   $   $��
0,0,604,84q�6   $��28��67   $��Right=�6C   $��Bottom=�6_   $	��104��6z   $��Ingrese Modelo��6�   	 J� RenderTransformOrigin$	 0.423,0.464&�6�   $��13(�6�   �� 5%   
   -   5        
 ��Name$
 btnSalir��5%   M   $��33��6   $��Right=�6   $��
0,0,244,38q�69   $��Bottom=�6_   $��92��6z   $��Atrás��6�   ��6�   Z�  5&        5'      5)      �� 5*   
   -   5        $ label4��5*   0   $��45��6   $��
221,15,0,0q�6   $	��Top=�6@   $
��Left=�6X   $	��375��6s   $
��Bold"�6   $*��$Modificación de datos del vehículo��6�   $��20(�6�   �� 5+   
   -   5        $��
txtPatente��5+   O   $��23��6   $��Right=�6   $��0,146,554,0q�6:   $	��Top=�6�   $	��154��6�   ��6a   �� *Nro_Patente_Modificar+.��6�   5,      �� 5-   
   -   5        $��txtnuevaMarca��5-   O   $��23��6   $��Right=�6   $��0,0,554,118q�6:   $��Bottom=�6{   $	��154��6�   ��6d   �� *Marca+6�   �� 5.   
   -	   5        $��txtnuevoModelo��5.   N   $��23��6   $��Right=�6   $��
0,0,554,56q�6:   $��Bottom=�6|   $	��154��6�   ��6d   �� *Modelo+6�   �� 5/   
   $
��Left=�6   $	��161��6+   $��581,227,0,0q�68   $	��Top=�6M   $	��182��6e   $)��#/Iconos/articles-9043_recurso_2.png��6q   �� 50   
   $
��Left=�6   $��69��6+   $��335,159,0,0q�67   $	��Top=�6L   $��64��6d   $ ��/Iconos/icons8-más-48.png��6o   �� 51   
   -
   5        $ label4_Copy��51   /   $��71��6   $��	59,55,0,0q�6   $	��Top=�6D   $
��Left=�6\   $	��372��6w   $U��OPara modificar el modelo y marca del vehículo
complete los siguientes campos*��6�   $
��Bold"�6�   $��14(�6�   �� 52   
   -   5         ��Name$ txtnuevaPatente��52   O   $��23��6   $��Right=�6   $��0,214,554,0q�6:   $	��Top=�6�   $	��154��6�   ��6h   �� *Nro_Patente+6�   �� 53   
   -   5        $ lblMarca_Copy��53   '   $��0,183,501,196q�6   $��Right=�6>   $	��207��6Z   $'��!Ingrese número de patente nueva:��6f   $��13(�6�   54      55      