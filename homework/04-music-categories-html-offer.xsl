<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="offers/offer[price &gt; 500]">
        <hr/>
        <div class="columns">
            <div class="column is-one-quarter">
                <div style="background-image:url({picture});
                     background-repeat: no-repeat;
                     background-size: cover;
                     height: 300px;"></div>
            </div>
            <div class="column">
                <xsl:call-template name="generalOfferInfo"/>

                <ul>
                    <xsl:apply-templates select="param"/>
                </ul>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="offers/offer[price &lt;= 500]">
    <hr/>
    <div class="columns">
        <div class="column is-one-quarter">
            <div style="background-image:url({picture});
                     background-repeat: no-repeat;
                     background-size: contain;
                     height: 128px;"></div>
        </div>
        <div class="column">
            <xsl:call-template name="generalOfferInfo"/>
        </div>
    </div>
    </xsl:template>

    <xsl:template match="offer/param">
    <li>
        <b> <xsl:value-of select="@name"/>: </b> <xsl:value-of select="text()"/>
    </li>
    </xsl:template>

    <xsl:template name="generalOfferInfo">
    <h4 class="title is-4">
        <a href="{url}">
            <xsl:value-of select="title"/>
        </a>
    </h4>
    <ul>
        <li>
            <b>Исполнитель: </b> <xsl:value-of select="artist"/>
        </li>
        <li>
            <b>Цена: </b> <xsl:value-of select="price"/> <xsl:value-of select="currencyId"/>
        </li>
    </ul>
    </xsl:template>

</xsl:stylesheet>