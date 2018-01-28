Задание 1:

файл task1.xml

Варианты ответов:
1. Запрос по конкретному id или t (названию): 
	200 <movie>...</movie>
	404 <error>Фильм не найден</error>
	
2. Ключь приложения это для доступа, насколько я понял?
	Но у них уже как минимум есть ошибка Invalid Api key!, код по идее должен быть 403

3. Отсутствие параметра t или id, задание неправильных параметров
	401 <error>Необходимы id или t</error>
	
Задание 2:

xsltproc task2.xsl 1160574.xml > task2.xml

Задание 3:

xsltproc --param category_id 1168865 task3.xsl 1160574.xml > task3.xml

Задание 4:

xsltproc --param category_id 1168865 task4.xsl 1160574.xml > task4.html

Доп задание (другой xml каталог, в предыдущем слишком много товаров):

xsltproc task_dop.xsl 1160584.xml > task_dop.xml

