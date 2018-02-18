<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="offer" mode="offerWrapper">
        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3">
            <div class="card" style="margin:10px 0">
                <xsl:apply-templates select="." mode="offerBody" />
            </div>
        </div>
    </xsl:template>
    <xsl:template match="price" mode="offerPrice">
        <h3 class="d-inline">
            <xsl:value-of select="." /><xsl:text> р.</xsl:text>
        </h3>
    </xsl:template>
</xsl:stylesheet>