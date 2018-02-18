# hh-school-xml
XML, XPATH, XSLT Homework
### Команды для выполнения
```
xsltproc --output output/result2.xml task2.xsl catalog.xml
xsltproc --param category 1177528 --output output/result3.xml task3.xsl catalog.xml
xsltproc --param category 1177528 --output output/result4.html task4.xsl catalog.xml
xsltproc --output output/result_offer_tree.xml task_offer_tree.xsl catalog.xml
xsltproc --output output/result_group_by.xml task_group_by.xsl catalog.xml
```
### Что будет
После выполнения всего этого, в папке output появятся выходные файлы, которые будут отражать решение задания.
1. `result1.xml`. Содержит решение для задания 1, как я его вижу, `task1_errors.txt` содержит возможные ответы с ошибками.
2. `result2.xml`. Содержит дерево категорий
3. `result3.xml`. Содержит товары определенной категории, категорию можно передавать значением параметра `category`
4. `result4.html`. Содержит HTML страницу, с товарами категории. Картинки грузятся только в хроме =(.  На странице выделены спецпредложения, а также товары, `@id` которых кратен трем. По некоторым товарам есть баджики, зависящие от определенных условий.
5. `result_offer_tree.xml`. Дополнительное. Расширение задания 2, размещение товаров внутри дерева категорий.
6. `result_group_by.xml`. Дополнительное. Группировка товаров по производителям.
