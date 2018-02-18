<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="offer" mode="offerBody">
        <div class="badges-list">
            <xsl:if test="not(country_of_origin = 'Китай')">
                <xsl:call-template name="badge">
                    <xsl:with-param name="badgeText" select="'Не китай!'" />
                </xsl:call-template>
            </xsl:if>
            <xsl:if test="weight &lt; 0.100">
                <xsl:call-template name="badge">
                    <xsl:with-param name="badgeText" select="concat('Лёгкий: ',weight * 1000,' г.')" />
                </xsl:call-template>
            </xsl:if>
            <xsl:if test="price &gt; '1000'">
                <xsl:call-template name="badge">
                    <xsl:with-param name="badgeClass" select="'warning'" />
                    <xsl:with-param name="badgeText" select="'Недёшево!'" />
                </xsl:call-template>
            </xsl:if>
        </div>
    </xsl:template>

    <xsl:template name="badge">
        <xsl:param name="badgeText" select="''"/>
        <xsl:param name="badgeClass" select="'success'"/>
        <div class="badge badge-{$badgeClass}">
            <xsl:value-of select="$badgeText" />
        </div>
    </xsl:template>
</xsl:stylesheet>