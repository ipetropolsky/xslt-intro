hhschool-xslt

# Решение ДЗ по XSLT.


# Задание 1.


Нормальный XML - task1.xml.


XML с ошибками - task1_error.xml.


Преполагаемые ошибки:


`<released>
			<date>07</date>
			<month>Nov</month>` - Использование Nov в качестве месяца.
 
 
 `<person name="Christopher Nolan" />` - имя атрибутом, first и second в одном поле.
 
 
 `<runtime>
			<length>169 min</length>` - продолжительность и единица измерения в одном поле.
      
      
# Задание 2, 3, 4
Взял раздел "Дом и сад", каталог - Хозтовары (http://static.ozone.ru/multimedia/feeds/facet/div_home/1146155.zip)


Запуск трансформаций осуществляется скриптом *run.sh*


Исходный каталог лежит в файле *source.xml* для простоты и налгядности трансформации запускаю на урезанном(в каждой группе оставлено по 5 товаров) файле *source_cut.xml*
