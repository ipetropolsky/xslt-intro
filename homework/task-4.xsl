<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" encoding="utf-8"/>

    <xsl:param name="paramCategoryId" select="1140537"/>

    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="shop/offers"/>
    </xsl:template>

    <xsl:template match="offers">
        <html lang="en">
            <head>
                <meta charset="utf-8"/>
                <title>Task 4</title>
                <style>
                    .container {
                        display: flex;
                        margin: 50px;
                        background-color: coral;
                        flex-direction: column;
                        align-items: center;
                        text-align: center;
                        background-color: #ccffff;
                    }
                    .item {
                        display: flex;
                        flex-direction: column;
                        background-color: #ccffcc;
                        margin: 50px;
                        padding: 50px;
                    }
                    img {
                        display: block;
                        margin: 0 auto;
                        width: 300px;
                        height: auto;
                    }
                    a {
                        margin: 20px auto;
                        width: 300px;
                        height: 30px;
                        line-height: 30px;
                        border-radius: 10px;
                        background-color: orange;
                        color: black;
                        font-weight: bold;
                        text-decoration: none;
                    }
                    a:hover {
                        background-color: DarkOrange;
                    }
                    h3 {
                        margin-bottom: 0px;
                        padding-bottom: 0px;
                        margin-top: 0px;
                        padding-top: 0px;
                        color: #555555;
                    }
                </style>
                <script>
                </script>
            </head>
            <body>
                <!-- page content -->
                <div class="container">
                    <h1>Подпорка книг по биологии</h1>
                    <!-- Select categories that match parameter, they will be copied -->
                    <xsl:apply-templates select="offer[categoryId = 1140537]">
                        <!-- After copying sort them -->
                        <xsl:sort select="name"/>
                    </xsl:apply-templates>
                </div>
            </body>
        </html>
    </xsl:template>

    <!-- Do full copy of offer, this will apply to offers selected by previous template -->
    <xsl:template match="offer">
        <div class="item">
            <img src="{picture}"/>
            <h1><xsl:value-of select="name"/></h1>
            <h2><xsl:value-of select="author"/></h2>
            <!-- Add extra notes when the book is old OR when it has many pages -->
            <xsl:if test="page_extent &gt; 200">
                <h3 class="tag">Много букв!</h3>
            </xsl:if>
            <xsl:if test="year &lt; 2010">
                <h3 class="tag">Старая книжка!</h3>
            </xsl:if>
            <!-- Write out the url to ozon.ru -->
            <a href="{url}">
                Купить на Ozon.ru:
                <xsl:value-of select="concat(price,' ',currencyId)"/>
            </a>
            <!-- Write a paragraph of description -->
            <p>
                <xsl:value-of select="description"/>
            </p>
        </div>
    </xsl:template>

</xsl:stylesheet>
