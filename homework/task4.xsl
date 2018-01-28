<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="category_id"/>

	<xsl:output method="html" indent="yes" encoding="utf-8" doctype-system="about:legacy-compat"/>
	<xsl:include href="task4_ext.xsl"/>
	<xsl:include href="task4_ext2.xsl"/>
	
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
					<xsl:sort select="price" order="ascending" data-type="number"/>
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
						<figure style="width:128px; text-align:center">
							<img src="{picture}" style="max-height:200px; max-width:128px"/>
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