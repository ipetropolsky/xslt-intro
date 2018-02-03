<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output indent="yes" encoding="utf-8"/>

    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="shop/categories"/>
    </xsl:template>

    <xsl:template match="categories">
        <categories>
            <xsl:apply-templates select="category[not(@parentId)]"/>
        </categories>
    </xsl:template>

    <xsl:template match="category">
        <category>
            <xsl:variable name="curId" select="@id"/>
            <xsl:attribute name="id"><xsl:value-of select="$curId"/></xsl:attribute>
            <title>
                <xsl:value-of select="."/>
            </title>
            <subcategories>
                <xsl:apply-templates select="../category[@parentId = $curId]"/>
            </subcategories>
        </category>
    </xsl:template>

</xsl:stylesheet>
