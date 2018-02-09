<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	
	<xsl:template match="offer[country_of_origin = 'Китай']" mode="container">
		<div class="container">
			<div class="box offer offer_chineese">
				<xsl:apply-templates select="." mode="content">
					<xsl:with-param name="additional_info">КИТАЙСКОЕ!!!</xsl:with-param>
				</xsl:apply-templates>
			</div>
		</div>
	</xsl:template>	
	
</xsl:stylesheet>