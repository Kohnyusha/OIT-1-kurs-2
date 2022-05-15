<?xml version="1.0" encoding="UTF-8"?>
      <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
         <xsl:template match="/">
            <html>
               <body>
               <h1 style="text-align:center">Информация о мультфильмах:</h1>
                  <table style="text-align:center" border="2">
                  <tr bgcolor="PaleVioletRed">
                   <th>Название</th>
                   <th>Дата выхода на экран</th>
                   <th>Жанр мульфильма</th>
                   <th>Рейтинг</th>
                  </tr>
                  <xsl:for-each select="CARTOON/FILM">
                     <tr>
                        <td><xsl:value-of select = "NAME"/></td>
                        <td><xsl:value-of select = "YEAR"/></td>
                        <td><xsl:value-of select = "ZHANR"/></td>
                        <td><xsl:value-of select = "REITING"/></td>
                     </tr>
                  </xsl:for-each>
                  </table>
               </body>
            </html>
         </xsl:template>
      </xsl:stylesheet>