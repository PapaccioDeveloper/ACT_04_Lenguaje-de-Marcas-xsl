<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
   <xsl:template match="/">
      <html>
         <head>
            <title>Tabla de Pokemons</title>
            <style>table {height: 80px;width: 800px;border: black 1px solid;border-collapse:collapse;border: none;}
      td {width: 30%;border: black 1px solid;}
      th{border: black 1px solid;text-aling:left;}
      img{ margin:10px auto; display:block; width: 30%;}
      p{margin-top:-45px;margin-left:1px;}</style>
         </head>
         <body>
            <table>
               <tr align="left">
                  <th>Nombre</th>
                  <th>Tipo</th>
                  <th>Foto</th>
               </tr>
               <xsl:for-each select="pokemons/pokemon">
                  <xsl:if test="@tipo='Hielo'">
                     <tr bgcolor="#b8adaf">
                        <td>
                           <p>
                              <xsl:value-of select="nombre" />
                           </p>
                        </td>
                        <td>
                           <p>
                              <xsl:value-of select="@tipo" />
                           </p>
                        </td>
                        <td>
                           <img>
                              <xsl:attribute name="src">
                                 <xsl:value-of select="foto" />
                              </xsl:attribute>
                           </img>
                        </td>
                     </tr>
                  </xsl:if>
                  <xsl:if test="@tipo='Fuego'">
                     <tr bgcolor="#ef5c45">
                        <td>
                           <p>
                              <xsl:value-of select="nombre" />
                           </p>
                        </td>
                        <td>
                           <p>
                              <xsl:value-of select="@tipo" />
                           </p>
                        </td>
                        <td>
                           <img>
                              <xsl:attribute name="src">
                                 <xsl:value-of select="foto" />
                              </xsl:attribute>
                           </img>
                        </td>
                     </tr>
                  </xsl:if>
                  <xsl:if test="@tipo='Agua'">
                     <tr bgcolor="#72bbf2">
                        <td>
                           <p>
                              <xsl:value-of select="nombre" />
                           </p>
                        </td>
                        <td>
                           <p>
                              <xsl:value-of select="@tipo" />
                           </p>
                        </td>
                        <td>
                           <img>
                              <xsl:attribute name="src">
                                 <xsl:value-of select="foto" />
                              </xsl:attribute>
                           </img>
                        </td>
                     </tr>
                  </xsl:if>
               </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
