<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="price" mode="offerPrice">
        <h3 class="d-inline">
            <xsl:value-of select="." /><xsl:text> р.</xsl:text>
        </h3>
    </xsl:template>
</xsl:stylesheet>