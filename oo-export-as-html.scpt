FasdUAS 1.101.10   ��   ��    k             l     ��  ��    T N =============================================================================     � 	 	 �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =   
  
 l     ��  ��    !  @file    export-oo-as-html     �   6   @ f i l e         e x p o r t - o o - a s - h t m l      l     ��  ��    V P @brief   Export OmniOutliner documents in a directory WITHOUT a .html extension     �   �   @ b r i e f       E x p o r t   O m n i O u t l i n e r   d o c u m e n t s   i n   a   d i r e c t o r y   W I T H O U T   a   . h t m l   e x t e n s i o n      l     ��  ��    2 , @author  Michael Hucka <mhucka@caltech.edu>     �   X   @ a u t h o r     M i c h a e l   H u c k a   < m h u c k a @ c a l t e c h . e d u >      l     ��  ��    H B @license Please see the file LICENSE.html in the parent directory     �   �   @ l i c e n s e   P l e a s e   s e e   t h e   f i l e   L I C E N S E . h t m l   i n   t h e   p a r e n t   d i r e c t o r y      l     ��   !��     T N =============================================================================    ! � " " �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =   # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   ' P J The sole reason for this script is that OmniOutliner refuses to export to    ( � ) ) �   T h e   s o l e   r e a s o n   f o r   t h i s   s c r i p t   i s   t h a t   O m n i O u t l i n e r   r e f u s e s   t o   e x p o r t   t o &  * + * l     �� , -��   , J D HTML to a directory name that does not end in ".html".  I find this    - � . . �   H T M L   t o   a   d i r e c t o r y   n a m e   t h a t   d o e s   n o t   e n d   i n   " . h t m l " .     I   f i n d   t h i s +  / 0 / l     �� 1 2��   1 M G annoying and confusing.  Thankfully, it turns out that when the export    2 � 3 3 �   a n n o y i n g   a n d   c o n f u s i n g .     T h a n k f u l l y ,   i t   t u r n s   o u t   t h a t   w h e n   t h e   e x p o r t 0  4 5 4 l     �� 6 7��   6 F @ command is invoked via AppleScript, it is possible to specify a    7 � 8 8 �   c o m m a n d   i s   i n v o k e d   v i a   A p p l e S c r i p t ,   i t   i s   p o s s i b l e   t o   s p e c i f y   a 5  9 : 9 l     �� ; <��   ; N H destination folder/directory without ending it with the suffix ".html".    < � = = �   d e s t i n a t i o n   f o l d e r / d i r e c t o r y   w i t h o u t   e n d i n g   i t   w i t h   t h e   s u f f i x   " . h t m l " . :  > ? > l     ��������  ��  ��   ?  @ A @ l     �� B C��   B P J This script can be invoked from a shell and passing it a destination path    C � D D �   T h i s   s c r i p t   c a n   b e   i n v o k e d   f r o m   a   s h e l l   a n d   p a s s i n g   i t   a   d e s t i n a t i o n   p a t h A  E F E l     �� G H��   G   like this:    H � I I    l i k e   t h i s : F  J K J l     �� L M��   L D >    osascript export-oo-as-html.scpt /some/path/to/a/directory    M � N N |         o s a s c r i p t   e x p o r t - o o - a s - h t m l . s c p t   / s o m e / p a t h / t o / a / d i r e c t o r y K  O P O l     ��������  ��  ��   P  Q R Q i      S T S I     �� U��
�� .aevtoappnull  �   � **** U o      ���� 0 argv  ��   T k     ^ V V  W X W Z     ( Y Z�� [ Y ?      \ ] \ l     ^���� ^ I    �� _��
�� .corecnte****       **** _ o     ���� 0 argv  ��  ��  ��   ] m    ����   Z r   
  ` a ` c   
  b c b 4   
 �� d
�� 
psxf d l    e���� e n     f g f 4   �� h
�� 
cobj h m    ����  g o    ���� 0 argv  ��  ��   c m    ��
�� 
alis a o      ���� 0 destpath  ��   [ k    ( i i  j k j r    " l m l I    ���� n
�� .sysostflalis    ��� null��   n �� o��
�� 
prmp o m     p p � q q & D e s t i n a t i o n   f o l d e r :��   m o      ���� 0 dest   k  r�� r r   # ( s t s n   # & u v u 1   $ &��
�� 
psxp v o   # $���� 0 dest   t o      ���� 0 destpath  ��   X  w x w l  ) )��������  ��  ��   x  y z y O   ) \ { | { k   - [ } }  ~  ~ O   - A � � � I  4 @���� �
�� .OOutOOeXnull���     obj ��   � �� � �
�� 
OOXt � 4   6 :�� �
�� 
psxf � o   8 9���� 0 destpath   � �� ���
�� 
OOXa � m   ; < � � � � � b c o m . o m n i g r o u p . O m n i O u t l i n e r . H T M L E x p o r t . H T M L D y n a m i c��   � 4  - 1�� �
�� 
docu � m   / 0����    ��� � Q   B [ � � � � I  E R�� � �
�� .OOutOOeXnull���     obj  � 4  E I�� �
�� 
docu � m   G H����  � �� ���
�� 
OOXt � 4   J N�� �
�� 
psxf � o   L M���� 0 destpath  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � k   Z Z � �  � � � l  Z Z�� � ���   � . ( It always produces the following error:    � � � � P   I t   a l w a y s   p r o d u c e s   t h e   f o l l o w i n g   e r r o r : �  � � � l  Z Z�� � ���   � U O "OmniOutliner got an error: �dyn.age8u� is not a writable file type." number 6    � � � � �   " O m n i O u t l i n e r   g o t   a n   e r r o r :    d y n . a g e 8 u    i s   n o t   a   w r i t a b l e   f i l e   t y p e . "   n u m b e r   6 �  ��� � l  Z Z�� � ���   � . ( However, it writes the output anyway...    � � � � P   H o w e v e r ,   i t   w r i t e s   t h e   o u t p u t   a n y w a y . . .��  ��   | m   ) * � ��                                                                                  OOut  alis    V  clarity                    �0��H+  	4KOmniOutliner.app                                               �P�����        ����  	                Applications    �1�      ��Vu    	4K  &clarity:Applications: OmniOutliner.app  "  O m n i O u t l i n e r . a p p    c l a r i t y  Applications/OmniOutliner.app   / ��   z  ��� � l  ] ]��������  ��  ��  ��   R  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� T���� � ���
�� .aevtoappnull  �   � ****�� 0 argv  ��   � ���� 0 argv   � ������������ p������ ������� ���������
�� .corecnte****       ****
�� 
psxf
�� 
cobj
�� 
alis�� 0 destpath  
�� 
prmp
�� .sysostflalis    ��� null�� 0 dest  
�� 
psxp
�� 
docu
�� 
OOXt
�� 
OOXa�� 
�� .OOutOOeXnull���     obj ��  ��  �� _�j  j *��k/E/�&E�Y *��l E�O��,E�O� 0*�k/ *�*��/��� UO *�k/�*��/l W X  hUOPascr  ��ޭ