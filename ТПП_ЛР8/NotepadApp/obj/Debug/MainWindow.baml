   M S B A M L   `   `   `  ����E  ANotepadApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:NotepadApp
NotepadApp  5   	   =#clr-namespace:NotepadApp.PropertiesNotepadApp.Properties  5   	       NotepadApp.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:NotepadApp     5   	   :
properties#clr-namespace:NotepadApp.Properties     5   	   $	��450��5
   	   $	��600��6   $��Segoe UI)�5   	   $��14(�6     � Title  5	   	   �� *WindowTitle+ � 	Resources 5       �� 
TargetType �� Property �� Value��%�  'm�       '�� x     �� 5   
   " m�6   .�5      ��  � �� �#F5F5F56+   �� 5       � �� �#DDDDDD6,   5      �� 5   
   " ��6   .�5      ��  � ��
 �����6+   �� 5       � ��$ 0q�60   �� 5       � ��$ 10q�6(   �� 5       �@��TextWrapping$
 Wrap=�6-   �� 5      # �@��VerticalScrollBarVisibility$
 Auto=�6<   5      5       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$	 New��5      6'     5   
   -   5        $
 Open��5      6(     5   
   -   5        $
 Save��5      6(     5    
   -   5        $ Close��5       6)   .��5#      ]� ���#F5F5F5.+�5$   
   o� $	��Top=�6   ���#F5F5F5.@�5%      m� ��6   �� *
MenuFile+.@�5&      m�  m� Command$	 New��66    m� InputGestureText$ Ctrl+N��6D   ��6   �� *	MenuNew+6D   m� 5'      $
 Open��67   $ Ctrl+O��6F   ��6   �� *
MenuOpen+6F   m� 5(      $
 Save��67   $ Ctrl+S��6F   ��6   �� *
MenuSave+6F   �� 5)      m� 5*      $ Close��67   ��6   �� *
MenuExit+67   5+      m� 5,      ��6   �� *MenuLanguage+.@�5-      m� -   5        
	 � Tag$	 en��5-   Y   ��6   �� *MenuEnglish+6Y   m� 5.      -   5        $	 ru��5.   Y   ��6   �� *MenuRussian+6Y   5/      50      �� 52   
   -   5        
 ��Name$
 
TextEditor��52       �� AcceptsReturn .  �� 
AcceptsTab . $ �� HorizontalScrollBarVisibility$
 Auto=�55       �� 	IsEnabled . 56      57      58      