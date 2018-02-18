<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" encoding="utf-8" />

    <xsl:key name="offerCategory" match="offer" use="categoryId" />

    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="shop/categories"/>
    </xsl:template>

    <xsl:template match="shop/categories">
        <categories>
            <xsl:apply-templates select="category[not(@parentId)]"/>
        </categories>
    </xsl:template>

    <xsl:template match="category">
        <category id="{@id}">
            <name><xsl:value-of select="."/></name>
            <xsl:apply-templates select="ancestor::categories/category[@parentId=current()/@id]"/>
            <offers>
                <xsl:for-each select="key('offerCategory', @id)">
                    <xsl:copy-of select="."/>
                </xsl:for-each>
            </offers>
        </category>
    </xsl:template>
</xsl:stylesheet>
