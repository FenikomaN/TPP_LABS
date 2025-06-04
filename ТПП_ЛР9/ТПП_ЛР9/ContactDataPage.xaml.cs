using System.Windows;
using System.Windows.Controls;
using System.Text.RegularExpressions;
using System.Linq;
using ТПП_ЛР9;

namespace ТПП_ЛР9
{
    public partial class ContactDataPage : Page
    {
        private MainWindow _mainWindow;

        public ContactDataPage(MainWindow mainWindow)
        {
            InitializeComponent();
            _mainWindow = mainWindow;

            // Заполняем поля, если данные уже вводились
            if (_mainWindow.FormData != null)
            {
                EmailTextBox.Text = _mainWindow.FormData.Email;
                PhoneTextBox.Text = _mainWindow.FormData.Phone;
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            // Возвращаемся на предыдущую страницу
            _mainWindow.MainFrame.GoBack();
        }

        private void NextButton_Click(object sender, RoutedEventArgs e)
        {
            // Валидация email
            string email = EmailTextBox.Text;
            if (string.IsNullOrWhiteSpace(email) || !Regex.IsMatch(email, @"^[^@\s]+@[^@\s]+\.[^@\s]+$"))
            {
                MessageBox.Show("Пожалуйста, введите корректный email");
                return;
            }

            // Валидация телефона (простая проверка на наличие цифр)
            if (string.IsNullOrWhiteSpace(PhoneTextBox.Text) || !PhoneTextBox.Text.Any(char.IsDigit))
            {
                MessageBox.Show("Пожалуйста, введите корректный телефонный номер");
                return;
            }

            // Сохраняем данные
            _mainWindow.FormData.Email = EmailTextBox.Text;
            _mainWindow.FormData.Phone = PhoneTextBox.Text;

            // Переходим на следующую страницу
            _mainWindow.MainFrame.Navigate(new AddressPage(_mainWindow));
        }
    }
}