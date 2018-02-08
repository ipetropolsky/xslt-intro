<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:param name="vSort" select="'price'"/>

    <xsl:template match="yml_catalog">
        <offers>
            <xsl:apply-templates select="shop/offers/offer[categoryId/text() = $id]">
                <xsl:sort select="./*[name() = $vSort]" order="ascending"/>
            </xsl:apply-templates>
        </offers>
    </xsl:template>

    <xsl:template match="shop/offers/offer">
        <offer>
            <xsl:copy-of select="node()|@*"/>
        </offer>
    </xsl:template>

</xsl:stylesheet>
