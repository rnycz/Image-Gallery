using Microsoft.Win32;
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
using System.IO;
using System.Windows.Threading;

namespace Gallery
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            image.Cursor = Cursors.Hand;
        }
        string chooseFile;
        int countImages = 0;
        
        private void browseBTN_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = "D:\\";
            openFileDialog.Filter = "All Files (*.*)|*.*|Image files (*.jpg; *.jpeg; *.png)|*.jpg; *.jpeg; *.png|Only jpg (*.jpg; *.jpeg)|*.jpg; *.jpeg|Only png (*.png)|*.png";
            openFileDialog.RestoreDirectory = true;
            openFileDialog.Multiselect = true;
            if (openFileDialog.ShowDialog() == true)
            {
                foreach(string fullPath in openFileDialog.FileNames)
                {
                    filesLB.Items.Add(System.IO.Path.GetFullPath(fullPath));
                }
                countImages = filesLB.Items.Count;
            }
        }

        private void filesLB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            chooseFile = filesLB.SelectedValue.ToString();
            fileNameLBL.Content = "Image: " + System.IO.Path.GetFileName(chooseFile);
            BitmapImage bitmap = new BitmapImage();
            bitmap.BeginInit();
            bitmap.UriSource = new Uri(chooseFile);
            bitmap.EndInit();
            image.Source = bitmap;

            imageInfoLBL.Content = "Original size: " + bitmap.PixelWidth + " x " + bitmap.PixelHeight;
        }

        private void nextBTN_Click(object sender, RoutedEventArgs e)
        {
            if (filesLB.SelectedIndex == countImages - 1)
            {
                filesLB.SelectedIndex = 0;
            }
            else if (filesLB.SelectedIndex < countImages)
            {
                filesLB.SelectedIndex = filesLB.SelectedIndex + 1;
            }
        }

        private void prevBTN_Click(object sender, RoutedEventArgs e)
        {
            if(filesLB.SelectedIndex == 0)
            {
                filesLB.SelectedIndex = countImages - 1;
            }
            else if(filesLB.SelectedIndex > 0)
            {
                filesLB.SelectedIndex = filesLB.SelectedIndex - 1;
            }
        }

        private void image_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            ImageFullSize imageFullSize = new ImageFullSize(chooseFile);
            imageFullSize.Show();
        }

        private void rotateBTN_Click(object sender, RoutedEventArgs e)
        {
            if(chooseFile != null)
            {
                BitmapImage bitmap2 = new BitmapImage();
                bitmap2.BeginInit();
                bitmap2.UriSource = new Uri(chooseFile);
                bitmap2.Rotation = (Rotation) Enum.Parse(typeof(Rotation), rotateValueCB.SelectionBoxItemStringFormat);
                bitmap2.EndInit();
                image.Source = bitmap2;
            }
        }
    }
}
