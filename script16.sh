#!/bin/bash

pr="y"
while [ "$pr" = "y" ]
do  
echo "Введите имя файла"
		read name1
		test -f "$name1"
	 per1="$?"
                        if [ "$per1" = "" ]; then
                        echo "Ошибка: файл не найден. Попробуйте снова"
			exit 250;
			fi
		mkdir ishodniki
		cp $name1.jpg ishodnoki

 choice=4
    # Выводим на экран
	
    echo "1. GIF"
    echo "2. JPEG"
    echo "3. PNG"
    echo -n "Выберите формат для конвертирования  [1,2 or 3]? "
    # Выполняем, пока переменная равна четырем
    # Зацикливание
    while [ $choice -eq 4 ]; do

    # читаем пользовательский ввод
    read choice
    # вложенное "если-иначе" условие
 	if [ $choice -eq 1 ] ; then
        echo "Укажите ширину нового изображения"
		read width
	echo "Укажите высоту нового изображения"
		read height
                convert $name1.jpg -resize $width!x$height! $name1.gif


	else
	
        if [ $choice -eq 2 ] ; then
        echo "Укажите ширину нового изображения"
                read width
        echo "Укажите высоту нового изображения"
                read height
                convert $name1.jpg -resize $width!x$height! $name1.jpeg


        else

	if [ $choice -eq 3 ] ; then
	echo "Укажите ширину нового изображения"
                read width
        echo "Укажите высоту нового изображения"
                read height
                convert $name1.jpg -resize $width!x$height! $name1.png


        else
  	echo "Пожалуйста, выберите пункт 1-3 !"
                            echo "1. GIF"
                            echo "2. JPEG"
                            echo "3. PNG"
                            echo -n "Выберите формат для конвертирования  [1,2 or 3]? "
                            choice=4
		fi
	fi
fi
done

echo "Хотите продолжить?(y/n)"
read pr
done
