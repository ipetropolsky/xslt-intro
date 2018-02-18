<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="offer[oldprice]" mode="offerWrapper">
        <div class="col-3">
            <div class="card bg-light border-primary" style="margin:10px 0">
                <xsl:apply-templates select="." mode="offerBody" />
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>