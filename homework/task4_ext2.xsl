<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	
	<xsl:template match="offer[country_of_origin = 'Китай']">
		<div class="container">
			<div class="box" style="margin:10px; background-color:#ffcccc;">
				<div class="media">
					<div class="media-left">
						<figure style="width:128px; text-align:center">
							<img src="{picture}" style="max-height:200px; max-width:128px"/>
						</figure>
					</div>
					<div class="media-content content">
						<h2><xsl:value-of select="name"/></h2> 
						<h3><xsl:value-of select="price"/> руб.</h3>
						<h3 style="color:#ff0000;">Китайское!!</h3>
						<p><xsl:value-of select="description"/></p>						
						<div class="level">
							<a href="#" class="card-footer-item">Добавить в корзину</a>
							<a href="{url}" class="card-footer-item">Товар на ozon.ru</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>	
	
</xsl:stylesheet>