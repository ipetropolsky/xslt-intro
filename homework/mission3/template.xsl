<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output indent="yes"
                method="xml"
                encoding="utf-8"
                doctype-system="about:legacy-compat"/>

    <xsl:param name="vSort" select="'price'"/>

    <xsl:template match="shop/offers/offer">
        <xsl:if test="./categoryId = $id">
            <offer>
                <url><xsl:value-of select="./url"/></url>
                <price><xsl:value-of select="./price"/></price>
                <currencyId><xsl:value-of select="./currencyId"/></currencyId>
                <categoryId><xsl:value-of select="./categoryId"/></categoryId>
                <picture><xsl:value-of select="./picture"/></picture>
                <store><xsl:value-of select="./store"/></store>
                <pickup><xsl:value-of select="./pickup"/></pickup>
                <delivery><xsl:value-of select="./delivery"/></delivery>
                <local_delivery_cost><xsl:value-of select="./local_delivery_cost"/></local_delivery_cost>
                <name><xsl:value-of select="./name"/></name>
                <vendor><xsl:value-of select="./vendor"/></vendor>
                <description><xsl:value-of select="./description"/></description>
                <sales_notes><xsl:value-of select="./sales_notes"/></sales_notes>
                <manufacturer_warranty><xsl:value-of select="./manufacturer_warranty"/></manufacturer_warranty>
                <age unit="year"><xsl:value-of select="./age"/></age>
                <barcode><xsl:value-of select="./barcode"/></barcode>
                <weight><xsl:value-of select="./weight"/></weight>
                <dimensions><xsl:value-of select="./dimensions"/></dimensions>
            </offer>
        </xsl:if>
    </xsl:template>

    <xsl:template match="*">
        <offers>
            <xsl:apply-templates select="shop/offers/offer">
                <xsl:sort select="./*[name() = $vSort]" order="ascending"/>
            </xsl:apply-templates>
        </offers>
    </xsl:template>


</xsl:stylesheet>
