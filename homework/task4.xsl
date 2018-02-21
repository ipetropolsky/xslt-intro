<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:output
	   method="html"
	   encoding="utf-8"
	   doctype-system="about:legacy-compat"
	   indent="yes" />
	   
	<xsl:template match="yml_catalog">
		<html>
			<head>
				<style>
					table, th, td {
						border: 1px solid black;
					}
				</style>
			</head> 
			<body>
				<xsl:apply-templates select="child::*" mode="root" />
			</body>
		</html>
	</xsl:template>	
	
	<xsl:template match="category" mode="root">
		<xsl:if test="not(@parentId)">
			<xsl:variable name="parentId" select="@id" />		
			<dl>
				<dt>
					<xsl:value-of select="." />
					<xsl:if test="//offer[categoryId = $parentId]">
						<table>
							<xsl:apply-templates select="//offer[categoryId = $parentId]" />
						</table>
					</xsl:if>
				</dt>
				<dd>
					<xsl:apply-templates select="../category[@parentId = $parentId]" mode="child" />
				</dd>
			</dl>						
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="category" mode="child">
		<xsl:variable name="parentId" select="@id"/>
		<xsl:choose>
			<xsl:when test="//categories/category[@parentId = $parentId]">
				<dl>
					<dt>
						<xsl:value-of select="." />
						<xsl:if test="//offer[categoryId = $parentId]">
							<table>
								<xsl:apply-templates select="//offer[categoryId = $parentId]" />
							</table>
						</xsl:if>
					</dt>	
					<dd>
						<xsl:apply-templates select="../category[@parentId = $parentId]" mode="child" />
					</dd>
				</dl>
			</xsl:when>
			<xsl:otherwise>	
				<xsl:value-of select="." />
				<xsl:if test="//offer[categoryId = $parentId]">
					<table>
						<xsl:apply-templates select="//offer[categoryId = $parentId]" />
					</table>	
				</xsl:if>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>	
	
	<xsl:template match="offer">	
		<tr>
			<td>
				<a href="{url}">
					<xsl:text disable-output-escaping="yes">&lt;img src="</xsl:text>
					<xsl:value-of select="picture" />
					<xsl:text disable-output-escaping="yes">" height="100" width="150" &gt;</xsl:text>
					<xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text>
					<xsl:value-of select="nsame" />
				</a>	
				<xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text>
				<xsl:value-of select="price" />руб.
			</td>
			<td>
				<xsl:value-of select="description" />
			</td>
		</tr>
	</xsl:template>	
	
	<xsl:template match="text()|@*" mode="root" />
</xsl:stylesheet>