<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="offers/offer[price &lt; 130]">
        <xsl:if test="./categoryId = $id">
            <li>
                <div class="div1">
                    <h1><a href="{./url}"><xsl:value-of select="./name"/></a></h1>
                    <img src="{./picture}"/>
                    <p>Цена - <xsl:value-of select="./price"/></p>
                    <p>Производитель - <xsl:value-of select="./vendor"/></p>
                    <p>Описание - <xsl:value-of select="./description"/></p>
                </div>
            </li>
        </xsl:if>
    </xsl:template>


</xsl:stylesheet>
