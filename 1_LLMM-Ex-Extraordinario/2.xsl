<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
    <xsl:template match="/steam" >
    <html>
        <head>
            <title>Ejercicio 2</title>
        </head>
        <body>
            <h2 class="titulo"></h2>
            <p class="descripción"></p>
            <p class="género"></p>
            <h2 class="año"></h2>
            <div id="mejores_juegos">
                <h2>Mejores juegos de la década</h2>
                <ul>
                    <xsl:for-each select="/juegos/titulo/descripción/género/año">
                    <div class="juegos">
                        <h2><xsl:value-of select="titulo"/></h2>
                        <p><xsl:value-of select="descripci"/></p>
                        <p><xsl:value-of select="g"/></p>
                        <h2><xsl:value-of select="a"/></h2>
                    </div>
                    </xsl:for-each>
                </ul>
            </div>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>