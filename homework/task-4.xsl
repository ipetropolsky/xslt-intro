<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" encoding="utf-8"/>

    <xsl:param name="paramCategoryId" select="1140537"/>

    <xsl:include href="task-4-offer-many-words.xsl"/>
    <xsl:include href="task-4-offer-normal.xsl"/>

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


</xsl:stylesheet>
