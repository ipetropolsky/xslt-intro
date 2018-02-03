<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="offer[@available = 'true']">
        <article class="media notification">
            <figure class="media-left">
                <p class="image is-128x128">
                    <img src="{picture}"/>
                </p>
            </figure>
            <div class="media-content">
                <div class="content">
                    <h3>
                        <a href="{url}">
                            <xsl:value-of select="name"/>
                        </a>
                    </h3>
                    <span class="tag is-success">В наличии</span>
                    <ul>
                        <li>
                            Цена: <xsl:value-of select="price"/>
                            <xsl:choose>
                                <xsl:when test="currencyId = 'RUR'"> ₽</xsl:when>
                                <xsl:when test="currencyId = 'USD'"> $</xsl:when>
                                <xsl:when test="currencyId = 'EUR'"> €</xsl:when>
                                <xsl:when test="currencyId = 'GBP'"> £</xsl:when>
                                <xsl:otherwise><xsl:text> </xsl:text><xsl:value-of select="currencyId"/></xsl:otherwise>
                            </xsl:choose>
                        </li>
                        <xsl:apply-templates select="param"/>
                    </ul>
                </div>


                <article class="media">
                    <div class="media-content">
                        <div class="content">
                            <h4>Описание</h4>
                            <p>
                                <xsl:value-of select="description"/>
                            </p>
                        </div>
                    </div>
                </article>
            </div>
        </article>
    </xsl:template>

</xsl:stylesheet>