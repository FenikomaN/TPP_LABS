   M S B A M L   `   `   `  ����G  CТПП_ЛР9, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:ТПП_ЛР9ТПП_ЛР9  5      #    ТПП_ЛР9.PersonalDataPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:ТПП_ЛР9     5        N� Title$  Личные данные��5	      .��5      � $��20q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   $��Имя:��6   �� 5   
   -   5         ��Name$ FirstNameTextBox��5      $��1��6,   $��0,0,0,10q�69   �� 5   
   $��2��6   $��Фамилия:��6   �� 5   
   -   5        $ LastNameTextBox��5      $��3��6+   $��0,0,0,10q�68   �� 5   
   $��4��6   $ ��Дата рождения:��6   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ BirthDatePicker��5      $��5��6.   $��0,0,0,20q�6;   �� 5    
   -   5         ��Name$ 
NextButton��5       $��7��6%   $��
Далее��62   $��Right=�6B   $	��100��5!      $��30��6   6)   5"      5#      