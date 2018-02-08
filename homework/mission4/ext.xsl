<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="shop/offers/offer">
        <li>
            <xsl:choose>
                <xsl:when test="price &lt; 130">
                    <div class="divCheap">
                        <xsl:call-template name="itemData"/>
                    </div>
                </xsl:when>
                <xsl:otherwise>
                    <div class="divExpensive">
                        <xsl:call-template name="itemData"/>
                    </div>
                </xsl:otherwise>
            </xsl:choose>
        </li>
    </xsl:template>

    <xsl:template name="itemData">
        <h1><a href="{./url}"><xsl:value-of select="./name"/></a></h1>
        <img width="220" height="220" src="{./picture}"/>
        <p>Цена - <xsl:value-of select="./price"/></p>
        <p>Производитель - <xsl:value-of select="./vendor"/></p>
        <p>Описание - <xsl:value-of select="./description"/></p>
    </xsl:template>


</xsl:stylesheet>
