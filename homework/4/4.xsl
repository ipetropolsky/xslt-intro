<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="main.xsl"/>
    <xsl:import href="item.xsl"/>
    <xsl:output method="html" indent="yes" encoding="utf-8" doctype-system="about:legacy-compat"/>
    <xsl:param name="cid"/>
    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="shop/offers"/>
    </xsl:template>
</xsl:stylesheet>
