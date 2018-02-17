<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="1.0" encoding="UTF-8"/>
    
    <xsl:template match="offer[substring(price,string-length(price))=9]">
        <xsl:call-template name="offer">
            <xsl:with-param name="class" select="'class9'"/>
        </xsl:call-template>
    </xsl:template>
</xsl:transform>
