<?xml version="1.0" encoding="UTF-8"?>
      <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
         <xsl:template match="/">
            <html>
               <body>
               <h1 style="text-align:center">Успеваемость группы</h1>
                  <table style="text-align:center" border="2">
                  <tr bgcolor="Tan">
                   <td>Фамилия</td>
                   <td>Имя</td>
                   <td>Отчество</td>
                   <td>Средний балл</td>
                   <td>Год рождения</td>
                  </tr>
                  <xsl:for-each select="GROUP/HUMAN">
                  <xsl:sort  select="YEAR"/>
                     <tr>
                     <xsl:choose><!--При обработке xsl:choose процессор поочередно вычисляет выражения,содержащиеся в атрибутах test элементов xsl:when,-->
                        <xsl:when test = "BALL &lt; '6' "><!-- тестовое выражение-->
                            <tr>
                            <td><xsl:value-of select = "SURNAME"/></td>
                            <td bgcolor = "red"><xsl:value-of select = "NAME"/></td>
                            <td><xsl:value-of select = "LASTNAME"/></td>
                            <td><xsl:value-of select = "BALL"/></td>
                            <td><xsl:value-of select = "YEAR"/></td>
                            </tr>
                        </xsl:when>
                        <xsl:when test = "BALL = 6 ">
                            <tr>
                            <td><xsl:value-of select = "SURNAME"/></td>
                            <td  bgcolor = "LawnGreen"><xsl:value-of select = "NAME"/></td>
                            <td><xsl:value-of select = "LASTNAME"/></td>
                            <td><xsl:value-of select = "BALL"/></td>
                            <td><xsl:value-of select = "YEAR"/></td>
                            </tr>
                        </xsl:when>
                        <xsl:otherwise>
                        <tr>
                            <td><xsl:value-of select = "SURNAME"/></td>
                            <td><xsl:value-of select = "NAME"/></td>
                            <td><xsl:value-of select = "LASTNAME"/></td>
                            <td><xsl:value-of select = "BALL"/></td>
                            <td><xsl:value-of select = "YEAR"/></td>
                            </tr>
                        </xsl:otherwise>
                     </xsl:choose>
                    </tr>
                  </xsl:for-each>
                  </table>
               </body>
            </html>
         </xsl:template>
      </xsl:stylesheet>