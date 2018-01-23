<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="//offers/offer[contains(param[@name='Цвет'], 'красный')]">
        <div>
            <p>
                <img width="100%">
                    <xsl:attribute name="src">
                        <xsl:value-of select="picture[1]"/>
                    </xsl:attribute>
                </img>
            </p>
            <p>
                <xsl:value-of select="price"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="currencyId"/>
            </p>
            <p>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="url"/>
                    </xsl:attribute>
                    <xsl:value-of select="name"/>
                </a>
            </p>
            <p>
                <xsl:value-of select="vendor"/>
            </p>
            <p>
                <xsl:attribute name="style">
                    <xsl:text>color:red;</xsl:text>
                </xsl:attribute>
                <xsl:value-of select="param[@name='Цвет']"/>
            </p>
        </div>
    </xsl:template>

</xsl:stylesheet>


