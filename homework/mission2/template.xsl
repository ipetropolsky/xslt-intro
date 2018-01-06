<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output indent="yes"
                method="xml"
                encoding="utf-8"
                doctype-system="about:legacy-compat"/>

    <xsl:template name="requr">
        <xsl:param name="currentId"/>
        <xsl:for-each select="ancestor::shop/categories/category">
            <xsl:if test="@parentId = $currentId">
                <category id="{@id}">
                    <name><xsl:value-of select="."/></name>
                    <categories>
                        <xsl:call-template name="requr">
                            <xsl:with-param name="currentId" select="@id"/>
                        </xsl:call-template>
                    </categories>
                    <!-- offers -->
                </category>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="shop">
        <categories>
            <xsl:for-each select="categories/category">
                <xsl:if test="count(@parentId) = 0">
                    <category id="{@id}">
                        <name><xsl:value-of select="."/></name>
                        <categories>
                            <xsl:call-template name="requr">
                                <xsl:with-param name="currentId" select="@id"/>
                            </xsl:call-template>
                        </categories>
                        <!-- offers -->
                    </category>
                </xsl:if>
            </xsl:for-each>
        </categories>
    </xsl:template>

</xsl:stylesheet>
