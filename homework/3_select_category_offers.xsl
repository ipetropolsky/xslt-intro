<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:param name="targetGroupID" select="1179108"/>

    <!-- identity transform -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/">
        <offers>
        <xsl:apply-templates select="//offers/offer/categoryId[text()=$targetGroupID]/parent::offer">
        <xsl:sort select="price" data-type="number"/>
        </xsl:apply-templates>
        </offers>
    </xsl:template>

</xsl:stylesheet>
