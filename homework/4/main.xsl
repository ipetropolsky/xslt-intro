<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="item.xsl"/>
    <xsl:output method="html" indent="yes" encoding="utf-8" doctype-system="about:legacy-compat"/>
    <xsl:param name="cid"/>
    <xsl:template match="offers">
        <html>
        <head>
            <title>KISLOROD</title>
            <meta charset="utf-8"/>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
            <style type="text/css">
                .item-img {
                    max-height: 480px;
                }
            </style>
        </head>
        <body>
            <div class="container">
                <table class="table table-bordered mt-2">
                    <thead>
                    <tr>
                        <th scope="col" class="text-center">Товары</th>
                    </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select=".//offer[categoryId = $cid]">
                            <xsl:sort select="price" data-type="number"/>
                        </xsl:apply-templates>
                    </tbody>
                </table>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
