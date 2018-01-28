<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output indent="yes"/>

	<xsl:template match="yml_catalog">
	    <xsl:apply-templates select="shop/categories"/>
	</xsl:template>
	
	<xsl:template match="shop/categories">
		<categories>
			<xsl:apply-templates select="category[not(@parentId)]"/>
		</categories>	
	</xsl:template>
	
	<xsl:template match="category">
	    <category id="{@id}">
			<name><xsl:value-of select="."/></name>
			<xsl:apply-templates select="../category[@parentId=current()/@id]"/>
			<offers>
				<xsl:apply-templates select="../../offers/offer[categoryId = current()/@id]" />
			</offers>
	    </category>
	</xsl:template>
	
	<xsl:template match="offer">
		<xsl:copy-of select="current()"/>
	</xsl:template>
</xsl:stylesheet>
