<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:param name="paramCategoryId"/>
    <xsl:output indent="yes" encoding="utf-8"/>

    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="shop/offers"/>
    </xsl:template>

    <xsl:template match="offers">
        <!-- Create new offers element -->
        <offers>
            <!-- Select categories that match parameter, they will be copied -->
            <xsl:apply-templates select="offer[categoryId = $paramCategoryId]">
                <!-- After copying sort them -->
                <xsl:sort select="name"/>
            </xsl:apply-templates>
        </offers>
    </xsl:template>

    <!-- Do full copy of offer, this will apply to offers selected by previous template -->
    <xsl:template match="offer">
        <xsl:copy-of select="."/>
    </xsl:template>

</xsl:stylesheet>
