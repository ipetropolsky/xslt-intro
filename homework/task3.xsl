<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="category" select="0"/>

    <xsl:output indent="yes" encoding="utf-8" />

    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="shop/offers"/>
    </xsl:template>

    <xsl:template match="shop/offers">
        <offers>
            <xsl:apply-templates select="offer[categoryId = $category]">
                <xsl:sort select="price"/>
            </xsl:apply-templates>
        </offers>
    </xsl:template>

    <xsl:template match="offer">
        <xsl:copy-of select="."/>
    </xsl:template>

</xsl:stylesheet>