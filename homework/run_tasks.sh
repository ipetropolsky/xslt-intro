#!/bin/sh

# task02
xsltproc -o 02-music-categories-list.xml 02-music-categories-list.xsl music.xml

# task03
# Cформированный документ доступен к просмотру через браузер
xsltproc --param categoryId 1143470 -o 03-music-categories-extract.xml 03-music-categories-extract.xsl music.xml

# task04
# Формируем html документ из выжимки сформированной в task03
xsltproc -o 04-music-categories-html.html 04-music-categories-html.xsl 03-music-categories-extract.xml
