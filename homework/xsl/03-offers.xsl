<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output indent="yes" encoding="utf-8"/>

    <xsl:param name="categoryID"/>

    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="shop/offers"/>
    </xsl:template>

    <xsl:template match="offers">
        <offers>
            <xsl:apply-templates select="offer[categoryId = $categoryID]">
                <xsl:sort select="name"/>
            </xsl:apply-templates>
        </offers>
    </xsl:template>

    <xsl:template match="offer">
        <xsl:copy-of select="."/>
    </xsl:template>

</xsl:stylesheet>
