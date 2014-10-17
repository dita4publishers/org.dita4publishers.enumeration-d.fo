<?xml version="1.0" encoding="UTF-8" ?>
<!-- ===========================================================
     FO generation templates for the enumerationDomain DITA domain.
     
     Copyright (c) 2010 W. DITA 4 Publishers
     
     =========================================================== -->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:d4p="http://www.dita4publishers.org"
  exclude-result-prefixes="xs d4p"
  >
  
  <xsl:param name="d4p.enumerator.showEnumerators" as="xs:string" select="'no'"/>
  <xsl:variable name="d4p:isShowEnumerators" as="xs:boolean"
    select="matches($d4p.enumerator.showEnumerators, 'yes|on|true|1', 'i')"
  />

  <xsl:template match="
    *[contains(@class, ' d4p_enum-d/d4pEnumerator ')]
    " priority="10">
     <fo:inline><xsl:apply-templates/></fo:inline>
  </xsl:template>

  <xsl:template match="
    *[contains(@class, ' d4p_simplenum-d/d4pSimpleEnumerator ')]
    " priority="10">
    <xsl:param name="doDebug" as="xs:boolean" tunnel="yes" select="false()"/>
    
    <xsl:if test="$doDebug">
      <xsl:message> + [DEBUG] d4pSimpleEnumerator: $d4p:isShowEnumerators=<xsl:value-of select="$d4p:isShowEnumerators"/></xsl:message>
    </xsl:if>
    
    <xsl:if test="$d4p:isShowEnumerators">
      <fo:inline><xsl:apply-templates/></fo:inline>
    </xsl:if>
  </xsl:template>
  
  
</xsl:stylesheet>
