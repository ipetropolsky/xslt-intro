<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:include href="4_color_red_offers.xsl"/>
    <xsl:output
       method="html"
       encoding="utf-8"
       doctype-system="about:legacy-compat"/>

    <xsl:template match="/">
        <head>
            <title>Каталог</title>
            <style type="text/css">
            BODY { font: 10pt Arial, Helvetica, sans-serif; }
            #catalog A { color: #666; }
            #catalog A:hover { color: #1fa0e2; }
            #catalog DIV {
             width: 110px;
             margin: 0 5px 15px 0;
             text-align: center;
             display: inline-block;
             vertical-align: bottom;
            }
            #catalog P { margin: 0 5px; }
            #catalog SPAN { color: #ccc; font-size: 0.8em; } 
            </style>
        </head>
        <body>
            <div id="catalog">
                <xsl:apply-templates select="//offers/offer">
                </xsl:apply-templates>
            </div>
        </body>
    </xsl:template>

    <xsl:template match="@*|node()">
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
                <xsl:value-of select="param[@name='Цвет']"/>
            </p>
        </div>
    </xsl:template>

</xsl:stylesheet>


