   M S B A M L   `   `   `  ����Q  MWPF de Joanna Sakugawa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:WPF_de_Joanna_Sakugawa.ViewsWPF_de_Joanna_Sakugawa.Views  5   	   U/clr-namespace:WPF_de_Joanna_Sakugawa.ViewModels!WPF_de_Joanna_Sakugawa.ViewModels  5   	   2    ,WPF_de_Joanna_Sakugawa.Views.EliminarPatente   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:WPF_de_Joanna_Sakugawa.Views     5   	   >vm/clr-namespace:WPF_de_Joanna_Sakugawa.ViewModels     5   	     � Title$  Eliminar Patente��5	   	   $	��450��6"   $	��800��6/    � DataContext 5
      8   2WPF_de_Joanna_Sakugawa.ViewModels.PatenteViewModel  5   
   ��5      �� 5   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5      �  � Color$ Black��6    � Offset$ 0Q�6)   � 5      $ 	#FF11A9C7��6   $ 1Q�6-   5      .��5      � $��0,5,4,0q�6   $	��413��6   $	��Top=�6)   ��5   
   �� 5      $ 0.5,1&�6"    � MappingMode$ RelativeToBoundingBox=�63   $ 0.5,0&�6W   .��5      � $ 	#FF061B1B��6   $ 1Q�61   � 5      $ 	#FF2DAAB1��6   � 5      $ 	#FF020909��6   $ 1Q�61   � 5      $ Black��6   $ 1Q�6-   � 5      $ 	#FFC5CCE4��6   $ 0.833Q�61   5      .+�5   
   �� -   5         ��Name$ btnAlta��5   N   $��29��6   $��Right=�6   $��0,257,337,0q�69   $	��Top=�6_   $��96��6w   $��Eliminar��6�   $��14(�6�   ��6�   Z�  J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5!      �� 5"   
   -   5        	 ��Name$	 
lblPatente��5"   1   $��28��6   $��0,186,471,0q�6   $	��Top=�6E   $��Right=�6]   $	��243��6y   $.��(Ingrese el número de patente a eliminar��6�   $��13(�6�   �� 5#   
   -   5        $ btnAtras��5#   M   $��33��6   $��Right=�6   $��
0,0,220,43q�69   $��Bottom=�6_   $��92��6z   $��Atrás��6�   ��6�   Z�  5$        5%      5'      �� 5(   
   -   5        $	 label4��5(   0   $��45��6   $��
228,20,0,0q�6   $	��Top=�6@   $
��Left=�6X   $	��375��6s   $
��Bold"�6   $%��Eliminar de datos del vehículo��6�   $��20(�6�   �� 5)   
   -   5        $��
txtPatente��5)   O   $��23��6   $��Right=�6   $��0,225,551,0q�6:   $	��Top=�6~   $	��154��6�   ��6a   �� *Nro_Patente+.��6�   5*      �� 5+   
   $
��Left=�6   $	��130��6+   $��606,257,0,0q�68   $	��Top=�6M   $	��145��6e   $)��#/Iconos/articles-9043_recurso_2.png��6q   �� 5,   
   -   5        $	 label4_Copy��5,   /   $��71��6   $��	83,88,0,0q�6   $	��Top=�6D   $
��Left=�6\   $	��372��6w   $M��GPara eliminar el vehículo del registro
complete los siguientes campos*��6�   $
��Bold"�6�   $��14(�6�   �� 5-   
   $
��Left=�6   $��75��6+   $��355,164,0,0q�67   $	��Top=�6L   $��75��6d   $E��?/WPF de Joanna Sakugawa;component/Iconos/icons8-eliminar-48.png��6o   
 J� RenderTransformOrigin$
 
0.04,0.573&�6�   5.      5/      