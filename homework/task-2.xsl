<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output indent="yes" encoding="utf-8"/>

    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="shop/categories"/>
    </xsl:template>

    <xsl:template match="categories">
        <categories>
            <!-- Select category without parent Id -->
            <xsl:apply-templates select="category[not(@parentId)]"/>
        </categories>
    </xsl:template>

    <xsl:template match="category">
        <category id="{@id}">
            <!-- Create name element for one category -->
            <name><xsl:value-of select="text()"/></name>
            <!-- Recursively insert child categories, children are placed same level -->
            <xsl:apply-templates select="../category[@parentId = current()/@id]"/>
        </category>
    </xsl:template>

</xsl:stylesheet>
