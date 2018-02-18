<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="offer[oldprice]" mode="offerWrapper">
        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3">
            <div class="card bg-light border-primary" style="margin:10px 0">
                <xsl:apply-templates select="." mode="offerBody" />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="price[../oldprice]" mode="offerPrice">
        <h3 class="text-white bg-danger font-weight-light d-inline" style="text-decoration: line-through;padding:0 .2em;">
            <xsl:value-of select="../oldprice" />
        </h3>
        <h3 class="font-weight-bold d-inline">
            <xsl:value-of select="." /><xsl:text> р.</xsl:text>
        </h3>
    </xsl:template>
</xsl:stylesheet>