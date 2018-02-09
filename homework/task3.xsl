<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="category_id"/>

	<xsl:output indent="yes" encoding="utf-8"/>
	
	<xsl:template match="yml_catalog">
		
		<xsl:apply-templates select="shop/offers/offer[categoryId = $category_id]">
			<xsl:sort select="weight" order="ascending"/>
		</xsl:apply-templates>
	</xsl:template>
	
	
	<xsl:template match="offer">
		<xsl:copy-of select="."/>
		
	</xsl:template>
	
</xsl:stylesheet>