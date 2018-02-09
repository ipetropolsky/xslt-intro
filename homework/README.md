﻿<h3>Задание 1:</h3>

файл task1.xml

Варианты ответов:
1. Запрос по конкретному id или t (названию): 
	```
	200 <movie>...</movie>
	404 <error>Фильм не найден</error>
	```
	
2. Ключь приложения это для доступа, насколько я понял?
	Но у них уже как минимум есть ошибка Invalid Api key!, код по идее должен быть 403

3. Отсутствие параметра t или id, задание неправильных параметров
	```400 <error>Необходимы id или t</error>```
	
<h3>Задание 2:</h3>

```xsltproc task2.xsl 1160574.xml > task2.xml```

<h3>Задание 3:</h3>

```xsltproc --param category_id 1168865 task3.xsl 1160574.xml > task3.xml```

<h3>Задание 4:</h3>

```xsltproc --param category_id 1168865 task4.xsl 1160574.xml > task4.html```

<h3>Доп задание</h3> (оба каталога теперь обрабатываются быстро!):

```
xsltproc task_dop.xsl 1160584.xml > task_dop.xml
xsltproc task_dop.xsl 1160574.xml > task_dop.xml

```

