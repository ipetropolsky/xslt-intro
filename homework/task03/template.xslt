<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    
    <xsl:param name="categoryId" select="1133695"/>
    
    <xsl:template match="*|/">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="text()|@*"/>
    
    <xsl:template match="offers">
		<xsl:element name="offers">
            <xsl:apply-templates select="node()[categoryId=$categoryId]">
                <xsl:sort select="price" data-type="number" order="ascending"/>
            </xsl:apply-templates>
        </xsl:element>
	</xsl:template>
    
    <xsl:template match="offer">
        <xsl:copy-of select="."/>
	</xsl:template>
</xsl:transform>
