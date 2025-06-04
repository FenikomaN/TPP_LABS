using System.Windows;
using System.Windows.Controls;
using ТПП_ЛР9;

namespace ТПП_ЛР9
{
    public partial class AddressPage : Page
    {
        private MainWindow _mainWindow;

        public AddressPage(MainWindow mainWindow)
        {
            InitializeComponent();
            _mainWindow = mainWindow;

            // Заполняем поля, если данные уже вводились
            if (_mainWindow.FormData != null)
            {
                CityTextBox.Text = _mainWindow.FormData.City;
                StreetTextBox.Text = _mainWindow.FormData.Street;
                HouseNumberTextBox.Text = _mainWindow.FormData.HouseNumber;
                ApartmentNumberTextBox.Text = _mainWindow.FormData.ApartmentNumber;
            }
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            // Возвращаемся на предыдущую страницу
            _mainWindow.MainFrame.GoBack();
        }

        private void SubmitButton_Click(object sender, RoutedEventArgs e)
        {
            // Валидация данных
            if (string.IsNullOrWhiteSpace(CityTextBox.Text))
            {
                MessageBox.Show("Пожалуйста, введите город");
                return;
            }

            if (string.IsNullOrWhiteSpace(StreetTextBox.Text))
            {
                MessageBox.Show("Пожалуйста, введите улицу");
                return;
            }

            if (string.IsNullOrWhiteSpace(HouseNumberTextBox.Text))
            {
                MessageBox.Show("Пожалуйста, введите номер дома");
                return;
            }

            // Сохраняем данные
            _mainWindow.FormData.City = CityTextBox.Text;
            _mainWindow.FormData.Street = StreetTextBox.Text;
            _mainWindow.FormData.HouseNumber = HouseNumberTextBox.Text;
            _mainWindow.FormData.ApartmentNumber = ApartmentNumberTextBox.Text;

            // Показываем все введенные данные
            string message = $"Личные данные:\n" +
                            $"Имя: {_mainWindow.FormData.FirstName}\n" +
                            $"Фамилия: {_mainWindow.FormData.LastName}\n" +
                            $"Дата рождения: {_mainWindow.FormData.BirthDate:dd.MM.yyyy}\n\n" +
                            $"Контактные данные:\n" +
                            $"Email: {_mainWindow.FormData.Email}\n" +
                            $"Телефон: {_mainWindow.FormData.Phone}\n\n" +
                            $"Адрес:\n" +
                            $"Город: {_mainWindow.FormData.City}\n" +
                            $"Улица: {_mainWindow.FormData.Street}\n" +
                            $"Дом: {_mainWindow.FormData.HouseNumber}\n" +
                            $"Квартира: {_mainWindow.FormData.ApartmentNumber}";

            MessageBox.Show(message, "Все введенные данные", MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }
}