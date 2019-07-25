<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html> 
      <body>
        <h2>My CD Collection</h2>
        <h3></h3>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:left">Title</th>
            <th style="text-align:left">Artist</th>
            <th style="text-align:left">Country</th>
            <th style="text-align:left">Company</th>
            <th style="text-align:left">Price</th>
            <th style="text-align:left">Year</th>
          </tr>
          <xsl:for-each select="catalog/cd">
           <!-- loop through all cd The XSL <xsl:for-each> element can be used to select every XML element of a specified node-set:-->
           <xsl:sort select="country"/>
           

           <tr>

            <td><xsl:value-of select="title"/></td>  <!-- The <xsl:value-of> element can be used to extract the value of an XML element and add it to the output stream of the transformation: -->
<!--               To add a conditional test, add the <xsl:if> element inside the <xsl:for-each> element in the XSL file:
-->
        <xsl:choose>
          <xsl:when test="price > 10">
            <td bgcolor="#ff00ff">
              <xsl:value-of select="artist"/></td>
            </xsl:when>
            <xsl:when test="price &gt; 9">
          <td bgcolor="#cccccc">
          <xsl:value-of select="artist"/></td>
        </xsl:when>
            <xsl:otherwise>
              <td><xsl:value-of select="artist"/></td>
            </xsl:otherwise>
          </xsl:choose>

  <!-- <td><xsl:value-of select="artist"/></td> -->
  <td><xsl:value-of select="country"/></td>
  <td><xsl:value-of select="company"/></td>
  <td><xsl:value-of select="price"/></td>
  <td><xsl:value-of select="year"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

