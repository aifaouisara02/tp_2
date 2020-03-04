<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="annuaire.dtd"/>
  <xsl:template match="/">
          <html xmlns="http://www.w3.org/1999/xhtml">
              <body>
                <h1 align="center">Annuaire</h1>
                <h2 align="center">La liste des personnes</h2>
                <xsl:for-each select="annuaire/personne[identite/adresse/ville='Bouira']">
                   <p>
                   <b>Nom:</b><xsl:value-of select="identite/nom"/><br/>
                   <b>Prenom:</b><xsl:value-of select="identite/prenom"/><br/>
                   <b>Rue:</b><xsl:value-of select="identite/adresse/rue"/><br/>
                   <b>Ville:</b><xsl:value-of select="identite/adresse/ville"/>:<br/>
                   <b>Telephone:</b><xsl:value-of select="identite/adresse/telephone"/></p>
                 </xsl:for-each>
             </body>
          </html>
  </xsl:template>
</xsl:stylesheet>
