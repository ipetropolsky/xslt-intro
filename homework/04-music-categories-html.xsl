<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output indent="yes"
                method="html"
                encoding="utf-8"
                doctype-system="about:legacy-compat"/>

    <xsl:include href="04-music-categories-html-offer.xsl"/>

    <xsl:param name="categoryId" select="1143470"/>

    <xsl:template match="root">
        <html>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.1/css/bulma.min.css"/>
        </html>
        <body>
            <div class="container">
                <h1 class="title"><xsl:value-of select="category/text()"/></h1>
                <div>
                    <xsl:apply-templates select="offers/offer">
                        <xsl:sort select="year" data-type="number" order="descending"/>
                    </xsl:apply-templates>
                </div>
            </div>
        </body>
    </xsl:template>



</xsl:stylesheet>
