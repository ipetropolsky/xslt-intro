<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="offer.xslt"/>
    <xsl:import href="offer-class0.xslt"/>
    <xsl:import href="offer-class9.xslt"/>
    <xsl:output method="html" version="1.0" encoding="UTF-8"/>

    <xsl:param name="categoryId" select="1133695"/>
    
    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes"><![CDATA[<!DOCTYPE html>]]></xsl:text>
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.css"/>
                <style>
                    body {
                        margin: 20px;
                    }
                    .price {
                        font-weight: bold;
                    }
                    .class0 {
                        color: #ff4500;
                    }
                    .class9 {
                        color: #32cd32;
                    }
                </style>
            </head>
            
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="text()|@*"/>
    
    <xsl:template match="offers">
        <xsl:apply-templates select="offer[categoryId=$categoryId]">
            <xsl:sort select="price" data-type="number" order="ascending"/>
        </xsl:apply-templates>
	</xsl:template>
</xsl:transform>
