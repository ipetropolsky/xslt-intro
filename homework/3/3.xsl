<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="utf-8"/>
    <xsl:param name="cid"/>
    <xsl:template match="yml_catalog">
        <offers>
            <xsl:apply-templates select=".//offer[categoryId = $cid]"> 
                <xsl:sort select="price" data-type="number"/>
            </xsl:apply-templates>
        </offers>
    </xsl:template>
    
    <xsl:template match="offer">
        <xsl:copy-of select="."/>
    </xsl:template>
</xsl:stylesheet>
