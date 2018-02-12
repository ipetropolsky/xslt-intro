<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output indent="yes"
                encoding="utf-8"/>

    <xsl:param name="categoryId" select="1143470"/>

    <xsl:template match="yml_catalog">
        <xsl:processing-instruction name="xml-stylesheet">
            <xsl:text>type="text/xsl" href="04-music-categories-html.xsl"</xsl:text>
        </xsl:processing-instruction>
        <root>
            <category>
                <xsl:apply-templates select="shop/categories/category[@id = $categoryId]"/>
            </category>
            <offers>
                <xsl:apply-templates select="shop/offers/offer[categoryId = $categoryId]">
                    <xsl:sort select="price" data-type="number" order="descending"/>
                </xsl:apply-templates>
            </offers>
        </root>
    </xsl:template>

    <xsl:template match="shop/categories/category">
        <xsl:value-of select="text()"/>
    </xsl:template>

    <xsl:template match="shop/offers/offer">
        <xsl:copy-of select="."/>
    </xsl:template>

</xsl:stylesheet>
