   M S B A M L   `   `   `  ����U  QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf  5   	   G CProcessChart, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:WpfChartWpfChart 5   	      WpfChart.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5   	   (localclr-namespace:WpfChart     5   	     � Title$  
MainWindow��5	   	   $	��450��6   $��1032.011��6)   .��5
      �  � ColumnDefinitions 5   
   �� 5      $
��820* �6   �� 5      $
��213* �6   .+�5   
   #   LiveCharts.Wpf.CartesianChart  &    LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Right=�5   1    K� ZIndex$ -2��6H   $��50��6Z   $��80��6i   $��0q�6w   $��0q�6�      Zoom$ X=�6�   |�.  J� IsHitTestVisible .    ZoomingSpeed$ 15Q�6�      AnimationsSpeed$ 0h�6�      DisableAnimations . $��Visible=�6  $
��Left=�6<  $	��811��6W  	   Series	 6   �� *SeriesCollection+
 � BindingGroup
 5      &   System.Windows.Data.BindingGroup  5         AxisY 5         LiveCharts.Wpf.Axis     Title$	 CPU��6      LabelFormatter 6'   �� *
YFormatter+6O      AxisX 5        $
 Time��6      Labels 6(   �� *Labels+6D   5      �� 5    
   -   5        $��REMEMBER��5       $��1��6$   $��5,10,0,0q�64   $	��Top=�6F   $��20��6s   $
��Left=�6   $��78��6�   �� 5!   
   $	��PID��6   $��1��6   $��	10,35,0,0q�6.   $	��Top=�6A   $��26��6Y   $
��Left=�6e   $��33��6�   �� 5"   
   -   5         ��Name$ PIDLabel��5"      $��1��6$   $��23��64   $��	0,66,80,0q�6@    �� TextWrapping$
 Wrap=�6S   $	��Top=�6g   $��PlutoInterface��6   $��Right=�6�   $	��123��6�   �� 5#   
   -   5        $��Start��5#      $��1��6!   $
��Left=�61   $��126,389,0,0q�6L   $	��Top=�6a   $��75��6y   6�   �� 5$   
   -   5         ��Name$ LabelPercent��5$      $��Label��6&   $��1��66   $
��Left=�6F   $��
10,109,0,0q�6a   $	��Top=�6u   �� 5%   
   -   5        $ TimeStartLabel��5%      $��
Time start��6(   $��1��6=   $
��Left=�6M   $��	3,192,0,0q�6h   $	��Top=�6{   $	��198��6�   $��Center=�6�   �� 5&   
   -   5        $ TimePointLabel��5&      $��Time remember��6(   $��1��6@   $
��Left=�6P   $��	3,223,0,0q�6k   $	��Top=�6~   $	��198��6�   $��Center=�6�   �� 5'   
   -   5        $ TimeNowLabel��5'      $��Time now��6&   $��1��69   $
��Left=�6I   $��	3,254,0,0q�6d   $	��Top=�6w   $	��198��6�   $��Center=�6�   �� 5(   
   -   5        $ ProcessLabel��5(      $��Process not found��6&   $��	35,3,36,0q�6B   $	��Top=�6U   $��Center=�6m   $��24(�6�   $y�Visible=�6�   5*      5+      