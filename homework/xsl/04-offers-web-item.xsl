<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="offer">
        <article class="media notification">
            <figure class="media-left">
                <p class="image is-128x128">
                    <img src="{picture}"/>
                </p>
            </figure>
            <div class="media-content">
                <div class="content">
                    <h3>
                        <a href="{url}">
                            <xsl:value-of select="name"/>
                        </a>
                    </h3>
                    <span class="tag is-danger">Товар закончился</span>
                </div>


                <article class="media">
                    <div class="media-content">
                        <div class="content">
                            <h4>Описание</h4>
                            <p>
                                <xsl:value-of select="description"/>
                            </p>
                        </div>
                    </div>
                </article>
            </div>
        </article>
    </xsl:template>

</xsl:stylesheet>
