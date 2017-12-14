<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:tei="http://www.tei-c.org/ns/1.0" version="2.0" exclude-result-prefixes="#all">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="tei:persName[@ref]">
        <xsl:variable name="refID">
            <xsl:value-of select="data(./@ref)"/>
        </xsl:variable>
        <persName>
            <xsl:apply-templates/>
        </persName>
        <idno type="URL">
            <xsl:value-of select="$refID"/>
        </idno>
    </xsl:template>
    
    
</xsl:stylesheet>