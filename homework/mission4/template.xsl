<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="ext.xsl"/>

    <xsl:output indent="yes"
                method="html"
                encoding="utf-8"
                doctype-system="about:legacy-compat"/>

    <xsl:param name="vSort" select="'price'"/>

    <xsl:template match="yml_catalog">
        <html>
            <head>
                <style type="text/css">
                    .divExpensive{
                        border: 4px double black;
                        margin: 10px;
                    }
                    .divCheap{
                        border: 4px double black;
                        margin: 10px;
                        background: #bcbcbc;
                    }
                </style>
            </head>
            <body>
                <ul>
                    <xsl:apply-templates select="shop/offers/offer[categoryId/text() = $id]">
                        <xsl:sort select="./*[name() = $vSort]" order="ascending"/>
                    </xsl:apply-templates>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
