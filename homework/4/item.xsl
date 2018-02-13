<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" encoding="utf-8" doctype-system="about:legacy-compat"/>
    <xsl:template match="offer">
        <tr>
            <td>
                <div class="row">
                    <div class="col-6">
                        <img src="{picture[1]}" class="item-img mx-auto d-block"/>
                    </div>
                    <div class="col-6">
                        <div class="row">
                            <div class="col-12">
                                <h3>
                                    <xsl:value-of select="name"/>
                                </h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 text-right text-muted mb-2">
                                Код товара: <xsl:value-of select="barcode"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8">
                                <h6>Параметры:</h6>
                                <xsl:apply-templates select="param[@unit]"/>
                            </div>
                            <div class="col-4">
                                <div class="alert alert-primary w-100 py-3 text-center">
                                    <xsl:value-of select="price"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="currencyId"/>
                                </div>
                                <a href="{url}" class="btn btn-outline-primary w-100">
                                    Купить
                                </a>
                                <xsl:choose>
                                    <xsl:when test="local_delivery_cost = '0'">
                                        <div class="badge badge-success w-100">Бесплатная доставка</div>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <div class="badge badge-danger w-100">Платная доставка</div>
                                    </xsl:otherwise> 
                                </xsl:choose>
                            </div>
                        </div>
                    </div> <!-- col-6 (2) -->
                </div> <!-- row -->
            </td>
        </tr>
    </xsl:template>

    <xsl:template match="param">
                                <div class="row">
                                    <div class="col-9"><xsl:value-of select="@name"/></div>
                                    <div class="col-3 text-right">
                                        <xsl:value-of select="."/>
                                        <xsl:text> </xsl:text>
                                        <xsl:value-of select="@unit"/>
                                    </div>
                                </div>
    </xsl:template>
</xsl:stylesheet>
