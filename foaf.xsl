<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:foaf="http://xmlns.com/foaf/0.1/">

    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" >
            <head>
                <meta charset="UTF-8"/>
                <title>Profil FOAF de Nicole Pearson</title>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <h1>Profil FOAF de Nicole Pearson</h1>
                <xsl:apply-templates select="//foaf:Person"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="foaf:Person">
        <div class="profile" >
            <h2><xsl:value-of select="foaf:name"/></h2>
            <xsl:text>&#10;</xsl:text>
            <p>Email: <a href="mailto:{foaf:email}"><xsl:value-of select="foaf:email"/></a></p>
            <xsl:text>&#10;</xsl:text>
            <p>Date de naissance: <xsl:value-of select="foaf:dateOfBirth"/></p>
            <xsl:text>&#10;</xsl:text>
            <p>Homepage: <a href="{foaf:homepage}"><xsl:value-of select="foaf:homepage"/></a></p>
        </div>
    </xsl:template>

</xsl:stylesheet>
