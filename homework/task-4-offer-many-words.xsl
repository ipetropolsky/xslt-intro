<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes" encoding="utf-8"/>

    <!-- Do full copy of offer, this will apply to offers selected by previous template -->
    <xsl:template match="offer[page_extent &gt; 210]">
        <div class="item">
            <img src="{picture}"/>
            <h1><xsl:value-of select="name"/></h1>
            <h2><xsl:value-of select="author"/></h2>
            <!-- Add extra notes when the book is old OR when it has many pages -->
            <h3 class="tag">Много букв!</h3>
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
