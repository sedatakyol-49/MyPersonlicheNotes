   M S B A M L   `   `   `  ����M  IMyPersonlicheNotes, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:MyPersonlicheNotes.UI.ViewMyPersonlicheNotes.UI.View  5      Q-clr-namespace:MyPersonlicheNotes.UI.ViewModelMyPersonlicheNotes.UI.ViewModel  5      I)clr-namespace:MyPersonlicheNotes.UI.ModelMyPersonlicheNotes.UI.Model  5      )    #MyPersonlicheNotes.UI.View.NoteView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:MyPersonlicheNotes.UI.View     5      C	viewModel-clr-namespace:MyPersonlicheNotes.UI.ViewModel     5      ;model)clr-namespace:MyPersonlicheNotes.UI.Model     5      $
��1225��5
      $��689.5��5        � DataContext  5      3   -MyPersonlicheNotes.UI.ViewModel.NoteViewModel  5   
   -   5        	viewModel��5   "    � 	Resources 5         NoteDataTemplate �� DataType&    MyPersonlicheNotes.UI.Model.Note �� Orientation �� Path �� Mode  ButtonListBoxStyle �� ElementName �� Opacity �� Color��%+  &	        7  7  �� 5   
   "  60   .R�5      �� $ Vertical=�6   .+�5      �� $ 
Horizontal=�6   .+�5      �� $	��100��5      $��Center=�5      $��Stretch=�5      ��5      �� $ Title�$ TwoWay=��� 5      $	��335��5      $��Center=�5      $��Stretch=�5      ��5      �� $ Description�$ TwoWay=��� 5      $
��auto��5      $��Center=�5       $��Stretch=�5!      ��5"      �� $ DateTime�$ OneWay=��� 5$      $��Right=�5%      $��Center=�5&      $ 
Horizontal=�5'      .+�5(      �� $
��auto��5)      $��Center=�5*      $��Detay��5.      8��  ��5+      �� $ NoteListBox��$% DataContext.OnNoteDetailCommand���5-      �� 5/      �� 51      $
��auto��52      $��Center=�53      $	��Sil��56      8�� ��54      �� $ NoteListBox��$% DataContext.OnNoteDeleteCommand���55      �� 57      58      59      �� 5:      ��5;      �� 5<      $
 0.03Q�6*   $ 	#FF0F0F0F��69   5>      5?      5@      5A      .��5C      � 	 � ColumnDefinitions	 5D   
   �� 5E      $
��694* �6   �� 5F      $
��531* �6   .+�5I   
   � $��0��6   ���#FCF7F5.+�5J      �� $��	18,22,0,0q�5K      $
��Left=�5L      $	��Top=�5M      $��notebook��5N      $��Times New Roman)�5O      $��27(�5P      $
��Bold"�5Q      �� 5R      $��	18,75,0,0q�5S      $
��Left=�5T      $	��Top=�5U      $O��I"merhaba, hoş geldin. bu gün notlarına göz atmanı tavsiye ediyoruz."��5V      $��Times New Roman)�5W      $��16(�5X      5Y      � 5[   
   $��1��6   ���#ffffff.+�5\      �� $��	60,57,0,0q�5]      $
��Left=�5^      $	��Top=�5_      $(��"bugün bir not eklemek istermisin?��5`      $��Times New Roman)�5a      $��17(�5b      $
��Bold"�5c      �� 5d      $��
60,114,0,0q�5e      $
��Left=�5f      $	��Top=�5g      $$��Bir başlık belirleyebilirsin��5h      $��Times New Roman)�5i      $��13(�5j      �� 5k      -   5        
 ��Name$
 TxtTitle��5l      $��60,145,60,0q�5m      $	��Top=�5n      $��Times New Roman)�5o        
InputStyle#���  5p      ��5q      �� *NoteModel.Title+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 5r      $��
60,204,0,0q�5s      $
��Left=�5t      $	��Top=�5u      $%��Notun ile ilgili birşeyler yaz��5v      $��Times New Roman)�5w      $��13(�5x      �� 5y      $	��136��5z      $��60,235,60,0q�5{      $	��Top=�5|      $��Times New Roman)�5}      #���  5~       �� TextWrapping$
 Wrap=�5�      ��5      �� *NoteModel.Description+$ TwoWay=�$ PropertyChanged=�5�      �� 5�      $��
60,394,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��Tarih seçebilirsin��5�      $��Times New Roman)�5�      $��13(�5�      (  "System.Windows.Controls.DatePicker  5�      $��60,424,60,0q�5�      $	��Top=�5�      $��Times New Roman)�5�        DataPickerStyle#��[ 5�         SelectedDate 5�      �� *NoteModel.Datetimes+$ TwoWay=�$ PropertyChanged=�5�      �� 5�      $��49��5�      $��60,512,60,0q�5�      $	��Top=�5�      $��K A Y D E T��5�      $��12(�5�      $
��Bold"�5�        ButtonStyle#���  5�      ��5�      �� *OnNoteInsertCommand+��5�      �� *	NoteModel+5�      �� 5�      $��49��5�      $��60,575,60,0q�5�      $	��Top=�5�      $��Ç I K I Ş��5�      $��11(�5�      $
��Bold"�5�        ButtonLightStyle#���  5�      ��5�      �� *OnExitCommand+5�      5�      �� 5�   
   -   5        $��NoteListBox��5�      $��0��5�      $��17,138,17,0q�5�      $��Stretch=�5�      
������ $��0q�5�      #��[  5�      $��Hidden=�5�      ��5�      �� *Notes+5�      �� 5�   
   $	��100��5�      $��59��5�      $��483,578,0,0q�5�      $
��Left=�5�      $	��Top=�5�      $��DETAILS��5�      $y�	Collapsed=�5�      ��5�      �� *OnSelectedDetailCommand+��5�      �� $ NoteListBox��$ SelectedItem�5�      5�      5�      