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

namespace Gallery
{
    /// <summary>
    /// Logika interakcji dla klasy ImageFullSize.xaml
    /// </summary>
    public partial class ImageFullSize : Window
    {
        public ImageFullSize(string chooseFile)
        {
            InitializeComponent();
            ShowImage(chooseFile);
        }
        private void ShowImage(string path)
        {
            pathLBL.Content = path;
            BitmapImage bitmap = new BitmapImage();
            bitmap.BeginInit();
            bitmap.UriSource = new Uri(path);
            bitmap.EndInit();
            imageFullSize.Source = bitmap;
        }
    }
}
