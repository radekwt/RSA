   M S B A M L   `   `   `  ����  WDC    WDC.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Asymmetric Encryption��5   	   $	��350��6'   $	��525��64   .��5      � .+�5   
   �� $��Select public key file:��6   $
��Left=�62   $��	10,10,0,0q�6M   $	��Top=�6`   �� 5   
   -   5         ��Name$ PublicKeyFileTextBox��5      $
��Left=�60   $��23��6K   $��	10,32,0,0q�6W    �� TextWrapping$
 Wrap=�6j   $	��Top=�6~   $	��400��6�   �� 5   
   -   5         ��Name$ SelectPublicKeyButton��5      $��Select��60   $
��Left=�6A   $��
415,32,0,0q�6\   $	��Top=�6p   $��75��6�   6�   �� 5	   
   $��Select private key file:��6   $
��Left=�63   $��	10,65,0,0q�6N   $	��Top=�6a   �� 5
   
   -   5        $ PrivateKeyFileTextBox��5
      $
��Left=�61   $��23��6L   $��	10,87,0,0q�6X   $
 Wrap=�6k   $	��Top=�6   $	��400��6�   �� 5   
   -   5        $ SelectPrivateKeyButton��5      $��Select��61   $
��Left=�6B   $��
415,87,0,0q�6]   $	��Top=�6q   $��75��6�   6�   �� 5   
   $��Select input file:��6   $
��Left=�6-   $��
10,120,0,0q�6H   $	��Top=�6\   �� 5   
   -   5        $ InputFileTextBox��5      $
��Left=�6,   $��23��6G   $��
10,142,0,0q�6S   $
 Wrap=�6g   $	��Top=�6{   $	��400��6�   �� 5   
   -   5        $ SelectInputFileButton��5      $��Select��60   $
��Left=�6A   $��415,142,0,0q�6\   $	��Top=�6q   $��75��6�   6�   �� 5   
   $��Select output file:��6   $
��Left=�6.   $��
10,175,0,0q�6I   $	��Top=�6]   �� 5   
   -   5        $ OutputFileTextBox��5      $
��Left=�6-   $��23��6H   $��
10,197,0,0q�6T   $
 Wrap=�6h   $	��Top=�6|   $	��400��6�   �� 5   
   -   5        $ SelectOutputFileButton��5      $��Select��61   $
��Left=�6B   $��415,197,0,0q�6]   $	��Top=�6r   $��75��6�   6�   �� 5   
   -	   5        $ EncryptButton��5      $��Encrypt��6(   $
��Left=�6:   $��
10,240,0,0q�6U   $	��Top=�6i   $��75��6�   6�   �� 5   
   -
   5        $ DecryptButton��5      $��Decrypt��6(   $
��Left=�6:   $��
90,240,0,0q�6U   $	��Top=�6i   $��75��6�   6�   �� 5   
   -   5         ��Name$ StatusMessageLabel��5      $�� ��6,   $
��Left=�67   $��
10,280,0,0q�6R   $	��Top=�6f   $	��500��6~   5      5      