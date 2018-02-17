<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="1.0" encoding="UTF-8"/>

    <xsl:template match="offer">
        <xsl:call-template name="offer"/>
    </xsl:template>
    
    <xsl:template name="offer">
        <xsl:param name="class" select="''"/>
        <xsl:param name="maxLength" select="400"/>
        
        <div class="columns">
            <div class="column is-narrow" style="width: 100px">
                <img src="{picture}"/>
            </div>
            <div class="column">
                <div>
                    <span style="font-weight: bold">
                        <xsl:value-of select="name"/>
                    </span>
                    (<a href="{url}">Подробнее</a>)
                </div>
                <div style="font-style: italic">
                    <xsl:value-of select="//category[@id=$categoryId]"/>
                </div>
                <div>
                    <xsl:value-of select="substring(description,1,$maxLength)"/>
                    <xsl:if test="string-length(description)&gt;$maxLength">
                        ...
                    </xsl:if>
                </div>
            </div>
            <div class="column is-one-fifth price {$class}">
                <xsl:value-of select="price"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="currencyId"/>
            </div>
        </div>
    </xsl:template>
</xsl:transform>
