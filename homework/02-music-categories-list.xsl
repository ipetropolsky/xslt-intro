<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output indent="yes"
                encoding="utf-8"/>

    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="shop/categories/category[not(@parentId)]"/>
    </xsl:template>

    <xsl:template match="shop/categories/category">
        <category id="{@id}" name="{text()}">
            <xsl:apply-templates select="../category[@parentId = current()/@id]"/>
        </category>
    </xsl:template>

</xsl:stylesheet>
