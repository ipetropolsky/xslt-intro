<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	
	<xsl:template match="offer[local_delivery_cost = '0']" mode="container">
		<div class="container">
			<div class="box offer offer_free-delivery">
				<xsl:apply-templates select="." mode="content">
					<xsl:with-param name="additional_info">Бесплатная доставка!</xsl:with-param>
				</xsl:apply-templates>
			</div>
		</div>
	</xsl:template>	
	
</xsl:stylesheet>