For ozone xml the following category has been chosen:
http://static.ozone.ru/multimedia/feeds/facet/div_bs/1179872.zip

Task 1
1_movie.xml contains manual description of a movie instance

Task 2
xsltproc 2_categories_list_to_tree.xsl 1179872.xml > categories.xml

Task 3
xsltproc --param targetGroupID 1179108 3_select_category_offers.xsl 1179872.xml > 1179108.xml

Task 4
xsltproc 4_display_offers.xsl 1179108.xml > 1179108.html
