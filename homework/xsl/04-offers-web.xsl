<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="04-offers-web-item.xsl"/>
    <xsl:import href="04-offers-web-item-available.xsl"/>

    <xsl:output indent="yes"
                method="html"
                encoding="utf-8"
                doctype-system="about:legacy-compat"/>

    <xsl:variable name="categoryID">1181300</xsl:variable>

    <xsl:template match="yml_catalog">
        <xsl:variable name="categoryName"><xsl:apply-templates select="shop/categories/category[@id = $categoryID]"/></xsl:variable>

        <html>
            <head>
                <title><xsl:value-of select="$categoryName"/></title>

                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css"/>
            </head>

            <body>
                <section class="section">
                    <div class="container">
                        <h1 class="title">
                            <xsl:value-of select="$categoryName"/>
                        </h1>
                    </div>
                </section>

                <section class="section">
                    <div class="container">
                        <xsl:apply-templates select="shop/offers"/>
                    </div>
                </section>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="category">
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="offers">
        <xsl:apply-templates select="offer[categoryId = $categoryID]">
            <xsl:sort select="name"/>
        </xsl:apply-templates>
    </xsl:template>

    <xsl:template match="param">
        <li>
            <xsl:value-of select="@name"/>: <xsl:value-of select="."/>
            <xsl:if test="@unit and @unit != 'страна'">
                <xsl:text> </xsl:text><xsl:value-of select="@unit"/>
            </xsl:if>
        </li>
    </xsl:template>

</xsl:stylesheet>
