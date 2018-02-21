<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output indent="yes"/>
	<xsl:param name="cat_id" />
	
	<xsl:template match="yml_catalog">
		<xsl:copy>
			<xsl:apply-templates select="child::*" />
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="shop">
		<xsl:copy>
			<xsl:apply-templates select="child::*" />
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="*">
		<xsl:copy-of select="."/> 
	</xsl:template>
	
	<xsl:template match="offers">
		<xsl:copy>
			<xsl:apply-templates select="child::*">
				<xsl:sort select = "price" data-type = "number" order = "descending" />
			</xsl:apply-templates>
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="offer">
		<xsl:if test="categoryId[text() = $cat_id]">
			<xsl:copy-of select="."/> 
		</xsl:if>
	</xsl:template>
	
</xsl:stylesheet>