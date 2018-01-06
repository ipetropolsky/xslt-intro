<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="ext.xsl"/>

    <xsl:output indent="yes"
                method="html"
                encoding="utf-8"
                doctype-system="about:legacy-compat"/>

    <xsl:param name="vSort" select="'price'"/>

    <xsl:template match="offers/*">
        <xsl:apply-imports />
        <xsl:if test="./categoryId = $id">
            <li>
                <div class="div0">
                    <h1><a href="{./url}"><xsl:value-of select="./name"/></a></h1>
                    <img src="{./picture}"/>
                    <p>Цена - <xsl:value-of select="./price"/></p>
                    <p>Производитель - <xsl:value-of select="./vendor"/></p>
                    <p>Описание - <xsl:value-of select="./description"/></p>
                </div>
            </li>
        </xsl:if>
    </xsl:template>

    <xsl:template match="shop">
        <html>
            <head>
                <style type="text/css">
                    .div0{
                        border: 4px double black;
                        margin: 10px;
                    }
                    .div1{
                        border: 4px double black;
                        margin: 10px;
                        background: #bcbcbc;
                    }
                </style>
            </head>
            <body>
                <ul>
                    <xsl:apply-templates select="offers/*">
                        <xsl:sort select="./*[name() = $vSort]" order="ascending"/>
                    </xsl:apply-templates>

                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
