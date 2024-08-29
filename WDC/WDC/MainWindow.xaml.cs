using System;
using System.IO;
using System.Security.Cryptography;
using System.Windows;
using Microsoft.Win32;
using System.Text;

namespace WDC
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private string publicKeyFile;
        private string privateKeyFile;
        private string inputFile;
        private string outputFile;
        public MainWindow()
        {
            InitializeComponent();
        }
        private void SelectPublicKeyButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == true)
            {
                publicKeyFile = openFileDialog.FileName;
                PublicKeyFileTextBox.Text = publicKeyFile;
            }
        }

        private void SelectPrivateKeyButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == true)
            {
                privateKeyFile = openFileDialog.FileName;
                PrivateKeyFileTextBox.Text = privateKeyFile;
            }
        }

        private void SelectInputFileButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == true)
            {
                inputFile = openFileDialog.FileName;
                InputFileTextBox.Text = inputFile;
            }
        }

        private void SelectOutputFileButton_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            if (saveFileDialog.ShowDialog() == true)
            {
                outputFile = saveFileDialog.FileName;
                OutputFileTextBox.Text = outputFile;
            }
        }

        private void EncryptButton_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(publicKeyFile) || string.IsNullOrEmpty(inputFile) || string.IsNullOrEmpty(outputFile))
            {
                StatusMessageLabel.Content = "Please select public key, input file and output file";
                return;
            }

            try
            {
                RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
                rsa.ImportFromPem(File.ReadAllText(publicKeyFile));
                byte[] data = File.ReadAllBytes(inputFile);
                byte[] encryptedData = rsa.Encrypt(data, true);
                File.WriteAllBytes(outputFile, encryptedData);
                StatusMessageLabel.Content = "Encryption successful";
            }
            catch (Exception ex)
            {
                StatusMessageLabel.Content = "Encryption failed: " + ex.Message;
            }
        }

        private void DecryptButton_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(privateKeyFile) || string.IsNullOrEmpty(inputFile) || string.IsNullOrEmpty(outputFile))
            {
                StatusMessageLabel.Content = "Please select private key, input file and output file";
                return;
            }

            try
            {
                RSACryptoServiceProvider rsa = new RSACryptoServiceProvider();
                rsa.ImportFromPem(File.ReadAllText(privateKeyFile));
                byte[] data = File.ReadAllBytes(inputFile);
                byte[] decryptedData = rsa.Decrypt(data, true);
                File.WriteAllBytes(outputFile, decryptedData);
                StatusMessageLabel.Content = "Decryption successful";
            }
            catch (Exception ex)
            {
                StatusMessageLabel.Content = "Decryption failed: " + ex.Message;
            }
        }
    }
}
