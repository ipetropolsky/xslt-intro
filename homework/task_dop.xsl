<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output indent="yes" encoding="utf-8"/>
	
	<xsl:template match="yml_catalog">
		<xsl:apply-templates select="shop/categories"/>	
	</xsl:template>
	
	<xsl:key name="group" match="offer" use="concat(categoryId,'#',vendor)"/>
	
	
	<xsl:template match="categories">
		<categories>
			<xsl:apply-templates select="category[not(@parentId)]"/>	
		</categories>
	</xsl:template>
	
	<xsl:template match="category">
		<category id="{@id}" name="{text()}">
			<xsl:apply-templates select="/yml_catalog/shop/offers/offer[generate-id(.) = generate-id(key('group',concat(current()/@id,'#',vendor)))]" mode="vendor_list">
				<xsl:with-param name="category_id" select="@id"/>
			</xsl:apply-templates>
			
			<xsl:apply-templates select="../category[@parentId = current()/@id]"/>
		</category>
	</xsl:template>
	
	<xsl:template match="offer" mode="vendor_list">
		<xsl:param name="category_id"/>
		<vendor name="{vendor}">
			<xsl:apply-templates select="key('group',concat($category_id,'#',current()/vendor))" mode="offer"/>
		</vendor>
	</xsl:template>
	
	<xsl:template match="offer" mode="offer">
		<offer id="{@id}"><xsl:value-of select="name"/></offer>
	</xsl:template>
	
</xsl:stylesheet>