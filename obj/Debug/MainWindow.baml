   M S B A M L   `   `   `  ����B  >Gallery, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:GalleryGallery  5   	       Gallery.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Gallery     5   	     � Title$  Image Gallery��5   	   $	��450��6   $	��800��6,   .��5	      � ���	#FFDADADA.+�5
   
   �� -   5         ��Name$ image��5
      $��10,46,258,84q�6K   $	��524��6a   �� 5   
   -   5         ��Name$ fileNameLBL��5      $��Image: ��6%   $
��Left=�67   $��	10,10,0,0q�6R   $	��Top=�6e   $��18(�6}   $��Times New Roman)�6�   � 5   
   $
��Left=�6   $��79��6*   $��	0,340,0,0q�66   $	��Top=�6I   $	��792��6a   ���	#FFDEE2B3.+�5      �� -   5         ��Name$ nextBTN��5      $
��Next��6&   $��79��65   $��Verdana)�6V   $��14(�6k   $��23��6y   ���	#FF07D2FF$��393,28,320,28q�6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 10Q�6'      ShadowDepth$ 5Q�67   5      �� 5      -   5        $ prevBTN��5      $��Previous��6&   $
��Left=�69   $��	10,28,0,0q�6T   $	��Top=�6g   $��79��6   $��Verdana)�6�   $��14(�6�   $��23��6�   ���	#FF07D2FF 5        5      $ 10Q�6'   $ 5Q�67   5      �� 5      $&�� Click on image to get it bigger.��6   $
��Left=�6?   $��
149,27,0,0q�6Z   $	��Top=�6n   $��14(�6�   $��Times New Roman)�6�   �� 5      -   5        $ imageInfoLBL��5      $�� ��6*   $
��Left=�65   $��
554,27,0,0q�6P   $	��Top=�6d   $��16(�6|   $��Times New Roman)�6�   5      � 5   
   $
��Left=�6   $	��340��6*   $��	539,0,0,0q�67   $	��Top=�6J   $	��253��6b   ���	#FFDEE2B3.+�5      �� -   5        $ loadedImagesLBL��5      $��Loaded images:��6-   $
��Left=�6F   $��	10,46,0,0q�6a   $	��Top=�6t   $��14(�6�   $��Times New Roman)�6�   �� 5      -   5        $ 	browseBTN��5      $��Browse��6(   $
��Left=�69   $��	10,12,0,0q�6T   $	��Top=�6g   $��79��6   $��23��6�   $��Verdana)�6�   $��14(�6�   ���	#FF07D2FF 5        5      $ 10Q�6'   $ 5Q�67   5       �� 5!      -   5         ��Name$ filesLB��5!      $
��Left=�6'   $	��193��6B   $��	10,77,0,0q�6O   $	��Top=�6b   $	��233��6z   6�   �� 5"      -	   5        $ 	rotateBTN��5"      $��Rotate��6(   $
��Left=�69   $��
10,307,0,0q�6T   $	��Top=�6h   $��79��6�   $��23��6�   $��Verdana)�6�   $��14(�6�   ���	#FF07D2FF 5#        5$      $ 10Q�6'   $ 5Q�67   5&      �� 5'      -
   5         ��Name$ rotateValueCB��5'      $
��Left=�6.   $��123,310,0,0q�6I   $	��Top=�6^   $	��120��6v   ���	#FF07D2FF.@�5(      �� $	��0°��6   	 �� ContentStringFormat$	 Rotate0��6,   
 �� 
IsSelected
 . 6J   �� 5)      $
��90°��6   $	 Rotate90��6-   �� 5*      $��180°��6   $	 	Rotate180��6.   �� 5+      $��270°��6   $	 	Rotate270��6.   5,      5-      5.      5/      