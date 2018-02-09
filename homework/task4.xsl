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
				
				.offer {
					margin:10px;
				}
				
				.offer_free-delivery {
					background-color:#ccc;
				}
				
				.offer_chineese {
					background-color:#ffcccc;
				}
				
				.offer__image {
					max-width:128px;
					max-height:128px;
				}
				
				.offer__price {
					font-size:20px;
					display:block;
				}
				
				.offer__add-info {
					font-weight:bold;
				}
			</style>
		</head>
		<body>
			<section class="section">
				<xsl:apply-templates select="shop/offers/offer[categoryId = $category_id]" mode="container">
					<xsl:sort select="price" order="ascending" data-type="number"/>
				</xsl:apply-templates>
			</section>
		</body>
		</html>
	</xsl:template>
	
	
	<xsl:template match="offer" mode="container">
		<div class="container">
			<div class="box offer">
				<xsl:apply-templates select="." mode="content">
					<xsl:with-param name="additional_info"></xsl:with-param>
				</xsl:apply-templates>
			</div>
		</div>
	</xsl:template>	
	
	<xsl:template match="offer" mode="content">
		<xsl:param name="additional_info"/>
		<div class="media">
			<div class="media-left">
				<figure>
					<img src="{picture}" class="offer__image"/>
				</figure>
			</div>
			<div class="media-content content">
				<h2><xsl:value-of select="name"/></h2> 
				<span class="offer__price"><xsl:value-of select="price"/> руб.</span>
				<span class="offer__add-info"><xsl:value-of select="$additional_info"/></span>
				<p><xsl:value-of select="description"/></p>
				<div class="level">
					<a href="#" class="card-footer-item">Добавить в корзину</a>
					<a href="{url}" class="card-footer-item">Товар на ozon.ru</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>