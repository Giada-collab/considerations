<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" encoding="UTF-8"/>
      
    <xsl:template match="/">
        <html>
            <head>
                <title>Test XSLT</title>
                <link rel="stylesheet" type="text/css" href="..\css_stael\css_stael.css" />
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <!-- à partir d'ici toutes les règles de  transformation -->
    
    <xsl:template match="div">
        <div>
            <xsl:apply-templates/> 
        </div>
    </xsl:template>  
    
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/> 
        </p>
    </xsl:template> 
    
    <xsl:template match="head">
        <xsl:choose>
            <xsl:when test="parent::div[@type='part'] or parent::div[@type='chapter']">
                <h2>
                    <xsl:apply-templates/> 
                </h2>
            </xsl:when>
            <xsl:when test="parent::div[@type='apparatus']">
                <h3>
                    <xsl:apply-templates/> 
                </h3>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="span[@rend='sup']">
            <sup>
                <xsl:apply-templates/> 
            </sup>
    </xsl:template>
    
    <xsl:template match="lb">
        <br>
            <xsl:apply-templates/> 
        </br>
    </xsl:template>   
     
    <xsl:template match="del[@hand='#unknown']">
        <span class="delUnknown">
            <xsl:apply-templates/> 
        </span>
    </xsl:template> 
   
    
    <xsl:template match="orig">
        <span class="orig">
            <xsl:apply-templates/> 
        </span>
    </xsl:template>   
    
    <xsl:template match="reg"/>
        <span class="reg">
            <xsl:apply-templates/> 
        </span>
    </xsl:template>   
    
    <xsl:template match="app">
        <ol class="var">
            <xsl:apply-templates/> 
        </ol>
    </xsl:template>  
    
    
    <xsl:template match="lem">
        <li class="lem">
            <xsl:apply-templates/> 
        </li>
    </xsl:template>  
    
    <xsl:template match="rdg">
        <xsl:choose>
            <xsl:when test="@hand='#SchlegelW'">
                <li class="SW">
                    <xsl:apply-templates/> 
                </li>
            </xsl:when>
            <xsl:when test="@wit='#firstEd'">
                <li class="Fe">
                    <xsl:apply-templates/> 
                </li>
            </xsl:when>
            <xsl:otherwise>
                <li class="rdg">
                    <xsl:apply-templates/> 
                </li>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
</xsl:stylesheet>

