<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2015r4
YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.
Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:vmf="http://www.altova.com/MapForce/UDF/vmf" xmlns:agt="http://www.altova.com/Mapforce/agt" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="vmf agt xs">
    <xsl:template name="vmf:vmf1_inputtoresult">
        <xsl:param name="input" select="/.."/>
        <xsl:choose>
            <xsl:when test="$input='ATC0'">
                <xsl:value-of select="'V4'"/>
            </xsl:when>
            <xsl:when test="$input='ATC1'">
                <xsl:value-of select="'V3'"/>
            </xsl:when>
            <xsl:when test="$input='ATC2'">
                <xsl:value-of select="'V4'"/>
            </xsl:when>
            <xsl:when test="$input='ATC3'">
                <xsl:value-of select="'V4'"/>
            </xsl:when>
            <xsl:when test="$input='ATC4'">
                <xsl:value-of select="'V4'"/>
            </xsl:when>
            <xsl:when test="$input='ATC5'">
                <xsl:value-of select="'V6'"/>
            </xsl:when>
            <xsl:when test="$input='ATC6'">
                <xsl:value-of select="'V6'"/>
            </xsl:when>
            <xsl:when test="$input='ATC7'">
                <xsl:value-of select="'V5'"/>
            </xsl:when>
            <xsl:when test="$input='ATC8'">
                <xsl:value-of select="'V5'"/>
            </xsl:when>
            <xsl:when test="$input='ATC9'">
                <xsl:value-of select="'V5'"/>
            </xsl:when>
            <xsl:when test="$input='ATC10'">
                <xsl:value-of select="'V6'"/>
            </xsl:when>
            <xsl:when test="$input='ATC11'">
                <xsl:value-of select="'V6'"/>
            </xsl:when>
            <xsl:when test="$input='ATC12'">
                <xsl:value-of select="'V6'"/>
            </xsl:when>
            <xsl:when test="$input='ATC13'">
                <xsl:value-of select="'V6'"/>
            </xsl:when>
            <xsl:when test="$input='ATC14'">
                <xsl:value-of select="'V6'"/>
            </xsl:when>
            <xsl:when test="$input='ATC17'">
                <xsl:value-of select="'V3'"/>
            </xsl:when>
            <xsl:when test="$input='ATC18'">
                <xsl:value-of select="'V5'"/>
            </xsl:when>
            <xsl:when test="$input='RMS0'">
                <xsl:value-of select="'V4'"/>
            </xsl:when>
            <xsl:when test="$input='RMS1'">
                <xsl:value-of select="'V3'"/>
            </xsl:when>
            <xsl:when test="$input='RMS2'">
                <xsl:value-of select="'V5'"/>
            </xsl:when>
            <xsl:when test="$input='RMS3'">
                <xsl:value-of select="'V6'"/>
            </xsl:when>
            <xsl:when test="$input='RMS4'">
                <xsl:value-of select="'V6'"/>
            </xsl:when>
            <xsl:when test="$input='RMS5'">
                <xsl:value-of select="'V3'"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="'V4'"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
    <xsl:template name="agt:MapToWISC_EUWS_ModelLoc_var7_create_rec">
        <xsl:param name="var6_current"/>
        <rec>
            <xsl:variable name="var1_ROWID">
                <xsl:if test="$var6_current/@ROW_ID">
                    <xsl:value-of select="'1'"/>
                </xsl:if>
            </xsl:variable>
            <xsl:if test="string(boolean(string($var1_ROWID))) != 'false'">
                <xsl:attribute name="LOCID">
                    <xsl:value-of select="string($var6_current/@ROW_ID)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:variable name="var2_LATITUDE">
                <xsl:if test="$var6_current/@LATITUDE">
                    <xsl:value-of select="'1'"/>
                </xsl:if>
            </xsl:variable>
            <xsl:if test="string(boolean(string($var2_LATITUDE))) != 'false'">
                <xsl:attribute name="LATITUDE">
                    <xsl:value-of select="string($var6_current/@LATITUDE)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:variable name="var3_LONGITUDE">
                <xsl:if test="$var6_current/@LONGITUDE">
                    <xsl:value-of select="'1'"/>
                </xsl:if>
            </xsl:variable>
            <xsl:if test="string(boolean(string($var3_LONGITUDE))) != 'false'">
                <xsl:attribute name="LONGITUDE">
                    <xsl:value-of select="string($var6_current/@LONGITUDE)"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:variable name="var4_BLDGSCHEME">
                <xsl:if test="$var6_current/@BLDGSCHEME">
                    <xsl:value-of select="'1'"/>
                </xsl:if>
            </xsl:variable>
            <xsl:variable name="var5_BLDGCLASS">
                <xsl:if test="$var6_current/@BLDGCLASS">
                    <xsl:value-of select="'1'"/>
                </xsl:if>
            </xsl:variable>
            <xsl:if test="string(boolean(string($var4_BLDGSCHEME))) != 'false'">
                <xsl:if test="string(boolean(string($var5_BLDGCLASS))) != 'false'">
                    <xsl:attribute name="VULNERABILITY">
                        <xsl:call-template name="vmf:vmf1_inputtoresult">
                            <xsl:with-param name="input" select="concat(string($var6_current/@BLDGSCHEME), string($var6_current/@BLDGCLASS))"/>
                        </xsl:call-template>
                    </xsl:attribute>
                </xsl:if>
            </xsl:if>
        </rec>
    </xsl:template>
    <xsl:template name="agt:MapToWISC_EUWS_ModelLoc_var9_resultof_map">
        <xsl:param name="var8_current"/>
        <xsl:for-each select="$var8_current/rec">
            <xsl:call-template name="agt:MapToWISC_EUWS_ModelLoc_var7_create_rec">
                <xsl:with-param name="var6_current" select="."/>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="/">
        <root>
            <xsl:attribute name="xsi:noNamespaceSchemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance">C:/Users/Administrator/Desktop/git/WISC/flamingo/EUWS/Files/ValidationFiles/WISC_EUWS_ModelLoc.xsd</xsl:attribute>
            <xsl:for-each select="root">
                <xsl:call-template name="agt:MapToWISC_EUWS_ModelLoc_var9_resultof_map">
                    <xsl:with-param name="var8_current" select="."/>
                </xsl:call-template>
            </xsl:for-each>
        </root>
    </xsl:template>
</xsl:stylesheet>
