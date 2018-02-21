<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="yml_catalog">
		<categories>
			<xsl:apply-templates select="//shop/categories/category[ not( @parentId )]" mode="children"/>
		</categories>
	</xsl:template>

	<xsl:template match="category" mode="children">
		<xsl:variable name="parentId" select="@id"/>

		<category id = "{@id}">
			<xsl:value-of select="." />
			<xsl:apply-templates select="../category[@parentId = $parentId]" mode="children"/>
		</category>
	</xsl:template>
	
</xsl:stylesheet>
