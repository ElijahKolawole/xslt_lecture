<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>My CD Collection</h2>  
  <xsl:apply-templates/>  
  </body>
  </html>
</xsl:template>

<xsl:template match="cd">
  <p>
    <xsl:apply-templates select="title"/>  
    <xsl:apply-templates select="artist"/>
    <xsl:apply-templates select="country"/>
    <xsl:apply-templates select="price"/>
    <xsl:apply-templates select="company"/>
    <xsl:apply-templates select="year"/>
  </p>
</xsl:template>

<xsl:template match="title">
  Title: <span style="color:blue">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="artist">
  Artist: <span style="color:red">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="country">
  Country:
  <xsl:value-of select="."></xsl:value-of> <br />
  
</xsl:template>

<xsl:template match="price">
  Price:
  <xsl:value-of select="."></xsl:value-of> <br />
</xsl:template>

<xsl:template match="company">
  Company:
  <xsl:value-of select="."></xsl:value-of> <br />
</xsl:template>

<xsl:template match="year">
  Year:
  <xsl:value-of select="."></xsl:value-of> <br />
</xsl:template>

</xsl:stylesheet>

