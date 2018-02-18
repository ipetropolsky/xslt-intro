<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="task4_badges.xsl"/>
    <xsl:import href="task4_normalOffer.xsl"/>
    <xsl:import href="task4_dividableOffer.xsl"/>
    <xsl:import href="task4_saleOffer.xsl"/>

    <xsl:param name="category" select="0"/>

    <xsl:output method="html" indent="yes" encoding="utf-8" doctype-system="about:legacy-compat" />

    <xsl:template match="yml_catalog">
        <html>
            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <link
                    rel="stylesheet"
                    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
                    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                    crossorigin="anonymous"
                />
                <title>Каталог</title>
            </head>
            <body>
                <div class="container-fluid">
                    <h1>Каталог</h1>
                    <h2><xsl:value-of select="shop/categories/category[@id = $category]" /></h2>
                    <xsl:apply-templates select="shop/offers"/>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="shop/offers">
        <div class="row">
            <xsl:apply-templates select="offer[categoryId = $category]" mode="offerWrapper">
                <xsl:sort select="price" data-type="number" />
            </xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match="offer" mode="offerWrapper">
        <xsl:apply-imports />
    </xsl:template>

    <xsl:template match="offer" mode="offerBody">
        <div class="card-body">
            <xsl:apply-templates select="picture[1]" />
            <div class="text-muted font-weight-light">
                <xsl:value-of select="vendorCode" />
            </div>
            <h5 class="card-title">
                <a href="{url}" title="Перейти в магазин" target="_blank">
                    <xsl:value-of select="name" />
                </a>
            </h5>
            <p class="card-text" style="max-height: 6em; overflow:hidden;">
                <xsl:value-of select="description" />
            </p>
            <xsl:apply-templates select="price" mode="offerPrice" />
            <xsl:apply-imports />
            <table class="table table-sm" style="font-size:70%">
                <xsl:apply-templates select="./param" mode="offerParam" />
            </table>
        </div>
    </xsl:template>

    <xsl:template match="picture">
        <img class="card-img-top" src="{.}" alt="Product picture" />
    </xsl:template>

    <xsl:template match="price" mode="offerPrice">
        <xsl:apply-imports />
    </xsl:template>

    <xsl:template match="param" mode="offerParam">
        <tr>
            <td><xsl:value-of select="@name" /></td>
            <td>
                <xsl:value-of select="." />
                <xsl:text> </xsl:text>
                <xsl:value-of select="@unit" />
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>