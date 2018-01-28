<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="category_id"/>

	<xsl:output method="html" indent="yes" encoding="utf-8" doctype-system="about:legacy-compat"/>
	
	<xsl:template match="yml_catalog">
		
		<html>
		<head>
			 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.2/css/bulma.min.css"/>
			<meta name="viewport" content="width=device-width, initial-scale=1"/>
			<style>
				.color-square {
					display:inline-block;
					width:20px; 
					height:20px; 
					border:1px solid black
				}
			</style>
		</head>
		<body>
			<section class="section">
				<xsl:apply-templates select="shop/offers/offer[categoryId = $category_id]">
					<xsl:sort select="weight" order="ascending"/>
				</xsl:apply-templates>
			</section>
		</body>
		</html>
	</xsl:template>
	
	
	<xsl:template match="offer">
		<div class="container">
			<div class="box" style="margin:10px">
				<div class="media">
					<div class="media-left">
						<figure class="image is-128x128">
							<img src="{picture}"/>
						</figure>
					</div>
					<div class="media-content content">
						<h2><xsl:value-of select="name"/></h2> 
						<h3><xsl:value-of select="price"/> руб.</h3>
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