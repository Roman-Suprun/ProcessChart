   M S B A M L   `   `   `  ���� U  QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf  G CProcessChart, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:WpfChartWpfChart    WpfChart.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     (localclr-namespace:WpfChart       � Title$  
MainWindow��$	��450��$��1032.011��.���  � ColumnDefinitions �� $
��820* ��� $
��213* �.+�#   LiveCharts.Wpf.CartesianChart  &    LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Right=� K� ZIndex$ -2��$��50��$��80��$��0q�$��0q�   Zoom$ X=�|�.  J� IsHitTestVisible .    ZoomingSpeed$ 15Q�   AnimationsSpeed$ 0h�   DisableAnimations . $��Visible=�$
��Left=�$	��811��	   Series	 �� *SeriesCollection+
 � BindingGroup
 &   System.Windows.Data.BindingGroup     AxisY    LiveCharts.Wpf.Axis     Title$	 CPU��   LabelFormatter �� *
YFormatter+   AxisX   $
 Time��   Labels �� *Labels+�� -   $��REMEMBER��$��1��$��5,10,0,0q�$	��Top=�$��20��$
��Left=�$��78���� $	��PID��$��1��$��	10,35,0,0q�$	��Top=�$��26��$
��Left=�$��33���� -    ��Name$ PIDLabel��$��1��$��23��$��	0,66,80,0q� �� TextWrapping$
 Wrap=�$	��Top=�$��PlutoInterface��$��Right=�$	��123���� -   $��Start��$��1��$
��Left=�$��126,389,0,0q�$	��Top=�$��75���� -    ��Name$ LabelPercent��$��Label��$��1��$
��Left=�$��
10,109,0,0q�$	��Top=��� -   $ TimeStartLabel��$��
Time start��$��1��$
��Left=�$��	3,192,0,0q�$	��Top=�$	��198��$��Center=��� -   $ TimePointLabel��$��Time remember��$��1��$
��Left=�$��	3,223,0,0q�$	��Top=�$	��198��$��Center=��� -   $ TimeNowLabel��$��Time now��$��1��$
��Left=�$��	3,254,0,0q�$	��Top=�$	��198��$��Center=��� -   $ ProcessLabel��$��Process not found��$��	35,3,36,0q�$	��Top=�$��Center=�$��24(�$y�Visible=�