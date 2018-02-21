#!/bin/bash

xsltproc task2.xsl source_cut.xml > result1.xml 
xsltproc --stringparam cat_id 1196920 task3.xsl source_cut.xml > result2.xml 
xsltproc task4.xsl source_cut.xml > result3.html