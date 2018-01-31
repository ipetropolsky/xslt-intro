<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:param name="certainId"/>

    <xsl:output indent="yes" method="xml" encoding="utf-8"/>

    <xsl:template match="yml_catalog">
       <xsl:apply-templates select="shop/offers/offer[categoryId = $certainId]">
          <xsl:sort select="price" data-type="number" order="descending"/>
       </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="offer">
        <xsl:copy-of select="."/>
    </xsl:template>
    
</xsl:stylesheet>