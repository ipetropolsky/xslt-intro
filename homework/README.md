Задания запускаются либо BASH-скриптом:

```
bash run_tasks.sh
```

Либо вручную каждое задание:
* Задание 1 составлено вручную, поэтому не требует запуска.
* Задание 2:
  ```
  xsltproc -o 02-music-categories-list.xml 02-music-categories-list.xsl music.xml
  ```

* Задание 3 (в параметр categoryId целевая категория):
  ```
  xsltproc --param categoryId 1143470 -o 03-music-categories-extract.xml 03-music-categories-extract.xsl music.xml
  ```
  Сформированный в задании 3 файл доступен для просмотра через браузер (запуск сервера через `python -m SimpleHTTPServer 8083`)
  
* Задание 4 (Формируем html документ из выжимки сформированной в task03):
  ```
  xsltproc -o 04-music-categories-html.html 04-music-categories-html.xsl 03-music-categories-extract.xml
  ```