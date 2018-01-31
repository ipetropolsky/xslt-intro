<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output indent="yes" method="xml" encoding="utf-8" doctype-system="about:legacy-compat"/>

    <xsl:template name="findFatherTamplate">
        <xsl:param name="curId"/>
        <xsl:for-each select="ancestor::shop/categories/category">
            <xsl:if test="@parentId = $curId">
                <category id="{@id}"  name="{text()}">
                    <xsl:call-template name="findFatherTamplate">
                        <xsl:with-param name="curId" select="@id"/>
                    </xsl:call-template>
                </category>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="shop">
        <xsl:for-each select="categories/category">
            <xsl:if test="count(@parentId) = 0">
                <category id="{@id}" name="{text()}">
                    <xsl:call-template name="findFatherTamplate">
                        <xsl:with-param name="curId" select="@id"/>
                    </xsl:call-template>
                </category>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>