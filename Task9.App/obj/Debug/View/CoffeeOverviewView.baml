   M S B A M L   `   `   `  ����D  @Task9.App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Task9.App.ViewTask9.App.View  5   	   '    !Task9.App.View.CoffeeOverviewView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Task9.App.View     5   	   _ [MaterialDesignThemes.Wpf, Version=5.2.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��600��5   	   $	��940��5   	     � WindowStyle$
  None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	   $��Consolas)�5   	    � DataContext 5   	   ��    mainViewModelLocator �� Source# [   �� Path$ CoffeeOverviewViewModel�.��5      � ���#121212 � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      $
��Auto �6   .+�5   
   �� -   5        $��Center=�5      $��Center=�5      
������ �� CornerRadius$ 5��5      $��50��5      $	��310��5       # MaterialDesignElevationShadow16 J� Effect# [ 5      ._�5      �� $$��Практическая №9 ��6   $��20(�5       $��Semibold"�5!      
�������$��Center=�5#      	 �� TextAlignment$	 Center=�5$      5%      �� 5'   
   $��Right=�6   $��Center=�5(      $��5q�5)      .+�5*      �� -   5        
������
������.��5-      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 Close=�6*   
�������67   5.      5/      � 51   
   $��1��6    � ColumnDefinitions 52      �� 53      $��* �6#   �� 54      $��* �6#   .+�57      �� $��0��6   .��58      �� -   5        $��CoffeeListView��59      $��5q�58      ���#1E1E1E��5:      �� *	Coffees+ �� SelectedItem 5;      �� *SelectedCoffee+��5=      �� 5>      .R�5?      �� ���#424242$ 5��5@   !   $��	0 10 0 10q�5A   !    # MaterialDesignElevationShadow24# [ 5B   !   ._�5C   "   � ��6'   �� *AmountInStock+  localAmountInStockConverter �� 	Converter# [  5D   &   �� 5E   *   $	��100 �6;   �� 5F   *   $��* �6;   �� 5G   *   $��3* �6;    5I   &   �� 5J   *   $��30 �68   �� 5K   *   $��30 �68   �� 5L   *   $��15 �68   .+�5O   &   �� $��2��5P   (   $��Center=�5Q   (   $��5q�5R   (   ��5O   ,   �� *	ImageId+  localImageConverter# [ 5R   (   �� 5T   &   $��14(�5U   (   $��1��5V   (   $��2��5W   (   $
��Bold"�5X   (   
���������5T   ,   �� *
CoffeeName+5Y   (   �� 5[   &   $��1��61    �� Orientation$ 
Horizontal=�5\   ,   $��1��5]   ,   .+�5^   *   �� $��Наличие: ��60   
�������5_   ,   �� 5`   *   
���������60   �� *AmountInStock+5a   ,   5b   '   �� 5d   &   $��Right=�5e   (   $��1��5f   (   $��2��5g   (   
���������5d   ,   �� *Price+  localPriceConverter# [ 5h   (   5i   #   5j      5k      5m      5n      �� 5p      $��1��6   $��5q�6+   .��5q      � ���#1E1E1E 5r      �� 5s      $	��150 �6(   �� 5t      $��30 �6(   �� 5u      $��30 �6(   �� 5v      $
��Auto �6(   �� 5w      $��30 �6(   �� 5x      $��30 �6(   �� 5y      $��30 �6(   �� 5z      $��30 �6(    5|      �� 5}      $	��150 �6+   �� 5~      $��* �6+   .+�5�      �� $��0��5�      $��2��5�      $	��150��5�      $	��150��5�      # [ 5�      $��10q�5�      ��5�      �� *SelectedCoffee.ImageId+# [  �� Mode$ OneWay=�5�      �� 5�      $��1��6   $	��ID:��6)   $
��Bold"�67   
�������6I   �� 5�      $��2��6   $��Название :��6)   $
��Bold"�6>   
�������6P   �� 5�      $��3��6   $��Описание:��6)   $
��Bold"�6=   
�������6O   �� 5�      $��4��6   $��	Цена:��6)   $
��Bold"�69   
�������6K   �� 5�      $��5��6   $��Количество:��6)   $
��Bold"�6?   
�������6Q   �� 5�      $��6��6   $��Поступление:��6)   $
��Bold"�6@   
�������6R   �� 5�      $��1��6   $��1��6)   
���������69   �� *SelectedCoffee.CoffeeId+$ OneWay=�6r   �� 5�      $��2��6   $��1��6)   
���������69   �� *SelectedCoffee.CoffeeName+$ OneWay=�6t   �� 5�      $��3��6   $��1��6+    �� TextWrapping$
 Wrap=�5�       �� 
IsReadOnly . 
����������#424242
������$��0,0,17,0q�5�   1   ��5�      �� *SelectedCoffee.Description+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5�   1   �� 5�      $��4��6   $��1��6)   
���������69   �� *SelectedCoffee.Price+$ OneWay=�6o   �� 5�      $��5��6   $��1��6)   
���������69   �� *SelectedCoffee.AmountInStock+$ OneWay=�6w   �� 5�      $��6��6   $��1��6)   
���������69   �� *&$SelectedCoffee.FirstAddedToStockDate+$ OneWay=�6   �� 5�      $��7��6!   $��1��6.   $��Center=�6B   .+�5�      �� $ ��Редактировать��5�        MaterialDesignFlatButton#��[ 5�      3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   Value$ -1Q�5�         IsIndicatorVisible .    IsIndeterminate . ��5�   !   �� *EditCommand+{�5�      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType$ WindowL�5�      5�      5�      5�      5�      5�      