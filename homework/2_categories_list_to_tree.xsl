<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" method="xml"/>

    <xsl:template match="yml_catalog">
        <xsl:apply-templates select="//shop/categories"/>
    </xsl:template>

    <xsl:template match="//shop/categories">
        <categories>
            <xsl:for-each select="//shop/categories/category[not(@parentId)]">
                <xsl:call-template name="traverse">
<!--                    <xsl:with-param name="level" select="0"/>-->
                    <xsl:with-param name="parent" select="@id"/>
                </xsl:call-template>
            </xsl:for-each>
        </categories>
    </xsl:template>

    <xsl:template name="traverse">
<!--        <xsl:param name="level"/>-->
        <xsl:param name="parent"/>
<!--        <div style="padding-left:{$level*10}">-->
            <xsl:copy select=".">
                <xsl:copy-of select="@*"/>
                <xsl:copy-of select="node()"/>
                <xsl:for-each select="//shop/categories/category[@parentId=$parent]">
                    <xsl:call-template name="traverse">
<!--                        <xsl:with-param name="level" select="$level + 1"/>-->
                        <xsl:with-param name="parent" select="@id"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:copy>
<!--            <xsl:text>&#xa;</xsl:text>-->
<!--        </div>-->
    </xsl:template>

</xsl:stylesheet>


