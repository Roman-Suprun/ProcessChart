using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
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
using System.Windows.Threading;
using LiveCharts;
using LiveCharts.Wpf;

namespace WpfChart
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Random random = new Random();
        DispatcherTimer timer = new DispatcherTimer();


        private static DateTime lastTime;
        private static TimeSpan lastTotalProcessorTime;
        private static DateTime curTime;
        private static TimeSpan curTotalProcessorTime;
        int n = 0;
        double[] CPUUsage = new double[100];
        double avg = 0;
        int avg_;
        public MainWindow()
        {
            InitializeComponent();

            TimeStartLabel.Content = "Time start: " + DateTime.Now.ToString();

            SeriesCollection = new SeriesCollection
            {
                new LineSeries
                {
                    Title = "CPUSerie",
                    Values = new ChartValues<int> { 100 },
                    PointGeometry = null
                },
                new LineSeries
                {
                    Title = "IpmroveSeries",
                    Values = new ChartValues<int> { 0 },
                    PointGeometry = null,
                }
            };

            SeriesCollection[1].Values.Add(0);

            DataContext = this;
            
            timer.Tick += new EventHandler(dispatcherTimer_Tick);
            timer.Interval = new TimeSpan(0, 0, 0, 0, 500);
        }

        public void Proces()
        {
            TimeNowLabel.Content = "Time now: "+ DateTime.Now.ToString();
            string PID = PIDLabel.Text;
            Process[] p = Process.GetProcessesByName(PID);
            if (p.Length == 0)
            {
                if (DateTime.Now.Second % 2 == 0)
                {
                    ProcessLabel.Visibility = Visibility.Hidden;
                }
                else
                {
                    ProcessLabel.Visibility = Visibility.Visible;
                }
                ProcessLabel.Content = String.Format("Process *{0}* not found!", PID);
            }
            else
            {
                ProcessLabel.Visibility = Visibility.Visible;
                ProcessLabel.Content = String.Format("Process *{0}* found! Number of pocesess {1}", p[0].ProcessName,p.Length);

                if (p != null)
                {
                    if (lastTime == null || lastTime == new DateTime())
                    {
                        lastTime = DateTime.Now;
                        for (int j = 0; j < p.Length; j++)
                        {
                            curTotalProcessorTime += p[j].TotalProcessorTime;
                        }
                        lastTotalProcessorTime = curTotalProcessorTime;
                    }
                    else
                    {
                        curTime = DateTime.Now;

                        curTotalProcessorTime = System.TimeSpan.Zero;

                        for (int j = 0; j < p.Length;j++)
                        {
                            curTotalProcessorTime += p[j].TotalProcessorTime;
                        }

                        CPUUsage[n % 100] = (curTotalProcessorTime.TotalMilliseconds - lastTotalProcessorTime.TotalMilliseconds) / curTime.Subtract(lastTime).TotalMilliseconds / Convert.ToDouble(Environment.ProcessorCount);
                        n++;
                        avg = 0;
                        for (var i = 0; i < 100; i++)
                        {
                            avg += CPUUsage[i];
                        }

                        SeriesCollection[1].Values.Add(avg_);

                        SeriesCollection[0].Values.Add(Convert.ToInt32(avg));

                        if (SeriesCollection[0].Values.Count > 20)
                        {
                            SeriesCollection[1].Values.RemoveAt(SeriesCollection[0].Values.Count - 20);
                            SeriesCollection[0].Values.RemoveAt(SeriesCollection[0].Values.Count - 20);
                        }

                        LabelPercent.Content = String.Format("CPU: {0:0.0} %", avg);

                        Debug.WriteLine("CPU: {0:0.0}%", avg * 100 / 100);

                        lastTime = curTime;
                        lastTotalProcessorTime = curTotalProcessorTime;
                    }
                }
            }
        }
        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            Proces();
        }

        public SeriesCollection SeriesCollection { get; set; }
  
        public Func<double, string> YFormatter { get; set; }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            avg_ = Convert.ToInt32(avg);
            TimePointLabel.Content = "Time remember: " + DateTime.Now.ToString();

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            timer.Start();
        }
    }
}

