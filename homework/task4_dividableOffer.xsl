<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="offer[@id mod 3 = 0]" mode="offerWrapper">
        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3">
            <div class="card bg-dark text-white" style="margin:10px 0">
                <xsl:apply-templates select="." mode="offerBody" />
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>