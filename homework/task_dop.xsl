<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output indent="yes" encoding="utf-8"/>
	<xsl:key name="vendor" match="offer[categoryId = $category_id]" use="vendor"/>
	
	
	<xsl:template match="yml_catalog">
		<xsl:apply-templates select="shop/categories"/>	
	</xsl:template>
	
	<xsl:template match="categories">
		<categories>
			<xsl:apply-templates select="category[not(@parentId)]"/>	
		</categories>
	</xsl:template>
	
	<xsl:template match="category">
		<category id="{@id}" name="{text()}">
			<xsl:apply-templates select="/yml_catalog/shop/offers/offer[categoryId = current()/@id]">
				<xsl:with-param name="category_id" select="@id"/>
			</xsl:apply-templates>
			
			<xsl:apply-templates select="../category[@parentId = current()/@id]"/>
		</category>
	</xsl:template>
	
</xsl:stylesheet>