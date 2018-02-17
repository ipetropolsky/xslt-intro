<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8"/>

    <xsl:template match="*|/">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="text()|@*"/>

    <xsl:template match="categories">
        <xsl:element name="categories">
            <xsl:apply-templates select="category[not(@parentId)]"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="category" name="category">
        <xsl:param name="parentId" select="false()"/>
        <xsl:variable name="items" select="node()[$parentId=false]|//category[@parentId=$parentId]" />
        <xsl:for-each select="$items">
            <xsl:element name="category">
                <xsl:copy-of select="@*"/>
                <xsl:attribute name="description">
                    <xsl:value-of select="."/>
                </xsl:attribute>
                <xsl:call-template name="category">
                    <xsl:with-param name="parentId" select="@id"/>
                </xsl:call-template>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>
</xsl:transform>
