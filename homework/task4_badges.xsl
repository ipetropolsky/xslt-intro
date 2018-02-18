<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="offer[not(country_of_origin = 'Китай')]" mode="badgesList">
        <xsl:call-template name="badge">
            <xsl:with-param name="badgeText" select="'Не китай!'" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="offer[weight &lt; 0.100]" mode="badgesList">
        <xsl:call-template name="badge">
            <xsl:with-param name="badgeText" select="concat('Лёгкий: ',weight * 1000,' г.')" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="offer[price &gt; '1000']" mode="badgesList">
        <xsl:call-template name="badge">
            <xsl:with-param name="badgeClass" select="'warning'" />
            <xsl:with-param name="badgeText" select="'Недёшево!'" />
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="badge">
        <xsl:param name="badgeText" select="''"/>
        <xsl:param name="badgeClass" select="'success'"/>
        <div class="badges-list">
            <div class="badge badge-{$badgeClass}">
                <xsl:value-of select="$badgeText" />
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>