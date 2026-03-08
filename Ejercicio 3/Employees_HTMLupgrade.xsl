<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/employees">
    <html lang="ca">
      <head>
        <title>Llista d'Empleats</title>
        <style>
          .employee-id {
            color: blue;
            font-size: 1.4em; 
          }
          .employee-name-line {
            font-size: 18px;
          }
          .office-list {
            color: red;
            font-style: italic;
          }
          b {
            color: black; 
          }
        </style>
      </head>
      <body>
        <h2>Llista d'empleats</h2>
        <ul>
          <xsl:for-each select="employee">
            <xsl:sort select="following-sibling::firstName[1]" order="ascending"/><!-- Orena alfabéticamente-->
            
            <li>
              <h3 class="employee-id">Empleat amb id <xsl:value-of select="@employeeNumber"/></h3>
              <ul>
                <li class="employee-name-line">
                  <b>Nom: </b> 
                  <xsl:value-of select="following-sibling::firstName[1]"/>&#160;
                  <xsl:value-of select="following-sibling::lastName[1]"/>
                </li>
                <li><b>Correu: </b> <xsl:value-of select="following-sibling::email[1]"/></li>
                <li><b>Id del seu superior: </b> <xsl:value-of select="following-sibling::reportsTo[1]"/></li>
                <li><b>Posició: </b> <xsl:value-of select="following-sibling::jobTitle[1]"/></li>
                
                <li>
                  <b>Dades de l'oficina:</b>
                  <ul class="office-list">
                    <li><b>Telèfon: </b> <xsl:value-of select="following-sibling::office[1]/Phone"/></li>
                    <li><b>Adreça: </b> 
                      <xsl:value-of select="following-sibling::office[1]/AddressLine1"/>
                      <xsl:if test="following-sibling::office[1]/AddressLine2 != 'NULL'">
                        , <xsl:value-of select="following-sibling::office[1]/AddressLine2"/>
                      </xsl:if>
                    </li>
                    <li><b>Ciutat: </b> <xsl:value-of select="following-sibling::office[1]/City"/></li>
                    <li><b>País: </b> <xsl:value-of select="following-sibling::office[1]/Country"/></li>
                    <li><b>Territori: </b> <xsl:value-of select="following-sibling::office[1]/Territory"/></li>
                  </ul>
                </li>
              </ul>
            </li>
            <br/>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>