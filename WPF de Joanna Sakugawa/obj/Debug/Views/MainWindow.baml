   M S B A M L   `   `   `  ����Q  MWPF de Joanna Sakugawa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:WPF_de_Joanna_Sakugawa.ViewsWPF_de_Joanna_Sakugawa.Views  5   	   U/clr-namespace:WPF_de_Joanna_Sakugawa.ViewModels!WPF_de_Joanna_Sakugawa.ViewModels  5   	   M+clr-namespace:WPF_de_Joanna_Sakugawa.ModelsWPF_de_Joanna_Sakugawa.Models  5   	   '    !WPF_de_Joanna_Sakugawa.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:WPF_de_Joanna_Sakugawa.Views     5   	   >vm/clr-namespace:WPF_de_Joanna_Sakugawa.ViewModels     5   	   >models+clr-namespace:WPF_de_Joanna_Sakugawa.Models     5   	     � Title$  Programa de Patentes��5
   	   $	��450��6&   $��602.4��63    � DataContext 5      8   2WPF_de_Joanna_Sakugawa.ViewModels.PatenteViewModel  5   
   ��5      �� 5   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5      �  � Color$ Black��6    � Offset$ 0Q�6)   � 5      $ 	#FF11A9C7��6   $ 1Q�6-   5      .��5      � $��0,5,4,0q�6   $	��413��6   $	��Top=�6)   ��5   
   �� 5      $ 0.5,1&�6"    � MappingMode$ RelativeToBoundingBox=�63   $ 0.5,0&�6W   .��5      � $ 	#FF061B1B��6   $ 1Q�61   � 5      $ 	#FF2DAAB1��6   � 5      $ 	#FF020909��6   $ 1Q�61   � 5      $ Black��6   $ 1Q�6-   � 5      $ 	#FFC5CCE4��6   $ 0.833Q�61   5      .+�5   
   �� -   5        $��btnAlta��5   N   $��23��6   $��Right=�6   $��0,237,367,0q�69   $	��Top=�6]   $��91��6u   $��14(�6�   ��6�   Z�  J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5       .��5!      Alta5"      �� 5#   
   -   5        $��btnBaja��5#   A   $
��Left=�6   $��255,237,0,0q�6,   $��91��6P   $��23��6\   $	��Top=�6h   $��14(�6�   ��6�   Z�  5$        5%      .��5&      Baja5'      �� 5(   
   -   5        $��btnMod��5(   M   $��23��6   $
��Left=�6   $��378,237,0,0q�68   $	��Top=�6[   $��91��6s   $��14(�6�   ��6   Z�  5)        5*      .��5+      Modificación5,      �� 5-   
   -   5        $��btnSalir��5-   M   $��29��6   $��Right=�6   $��
0,0,234,57q�69   $��Bottom=�6]   $	��101��6x   $��14(�6�   ��6�   Z�  5.        5/      .��50      Salir51      �� 52   
   $
��Left=�6   $	��106��6+   $��460,288,0,0q�68   $	��Top=�6M   $	��110��6e   $)��#/Iconos/articles-9043_recurso_2.png��6q   �� 53   
   $
��Left=�6   $��75��6+   $��267,148,0,0q�67   $	��Top=�6L   $��75��6d   $$��/Iconos/icons8-eliminar-48.png��6o    J� RenderTransformOrigin$ 0.516,0.594&�6�   �� 54   
   $
��Left=�6   $��69��6+   $��400,149,0,0q�67   $	��Top=�6L   $��69��6d   $"��/Iconos/icons8-editar-48.png��6o   $ 1.017,-0.014&�6�   �� 55   
   $
��Left=�6   $��74��6+   $��132,149,0,0q�67   $	��Top=�6L   $��75��6d   $ ��/Iconos/icons8-más-48.png��6o   �� 56   
   -   5        	 ��Name$	 label_1��56   0   $��37��6   $��
166,94,0,0q�6   $	��Top=�6A   $
��Left=�6Y   $	��281��6t   $.��(Seleccione la opción que desea realizar��6�   $
��Bold"�6�   $��14(�6�   57      58      