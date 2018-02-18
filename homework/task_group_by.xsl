<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" encoding="utf-8" />

    <xsl:key name="offerVendor" match="offer" use="vendor" />

    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="shop/offers" />
    </xsl:template>

    <xsl:template match="offers">
        <vendors>
            <xsl:apply-templates select="offer[generate-id(.) = generate-id(key('offerVendor', string(vendor))[1])]" />
        </vendors>
    </xsl:template>

    <xsl:template match="offer">
        <vendor name="{vendor}">
            <xsl:for-each select="key('offerVendor', string(vendor))">
                <xsl:copy-of select="."/>
            </xsl:for-each>
        </vendor>
    </xsl:template>
</xsl:stylesheet>