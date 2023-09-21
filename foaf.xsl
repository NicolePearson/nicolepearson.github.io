<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:foaf="http://xmlns.com/foaf/0.1/">

    <xsl:template match="/">
        <html>
            <head>
                <title>Profil FOAF de Nicole Pearson</title>
                <?xml-stylesheet type="text/xsl" href="foaf.xsl"?>
            </head>
            <body>
                <h1>Profil FOAF de Nicole Pearson</h1>
                <div id="foaf-details">
                    <xsl:apply-templates select="//foaf:Person"/>
                </div>
            </body>
        </html>
    </xsl:template>

    <!-- Modèle pour afficher les détails de la personne -->
    <xsl:template match="foaf:Person">
        <div class="profile">
            <h2><xsl:value-of select="foaf:name"/></h2>
            <p>Email: <a href="mailto:{foaf:email}"><xsl:value-of select="foaf:email"/></a></p>
            <p>Date de naissance: <xsl:value-of select="foaf:dateOfBirth"/></p>
            <p>Homepage: <a href="{foaf:homepage}"><xsl:value-of select="foaf:homepage"/></a></p>
        </div>
    </xsl:template>

</xsl:stylesheet>
