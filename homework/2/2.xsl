<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="utf-8"/>

    <xsl:template match="yml_catalog">
        <categories>
            <xsl:apply-templates select=".//category[not(@parentId)]"/>
        </categories>
    </xsl:template>

    <xsl:template match="category">
        <category id="{@id}" title="{text()}">
            <xsl:apply-templates select="../category[@parentId=current()/@id]"/>
        </category>
    </xsl:template>
</xsl:stylesheet>
