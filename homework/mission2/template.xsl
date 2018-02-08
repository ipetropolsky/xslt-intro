<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="shop/categories/category[not(@parentId)]"/>
    </xsl:template>

    <xsl:template match="shop/categories/category">
        <xsl:variable name="curId" select="@id"/>
        <category id="{$curId}" name="{text()}">
            <xsl:apply-templates select="../category[@parentId = $curId]"/>
        </category>
    </xsl:template>

</xsl:stylesheet>
