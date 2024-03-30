<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
      <html>
          <head>
              <title>Index des noms</title>
              <link rel="stylesheet" type="text/css" href="../css_stael/css_stael.css"/>
   
          </head>
          <body>
          <header class="clearfix">
              <!--Public domain, via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Madame_de_Sta%C3%ABl.jpg-->
              
              <img class="img_top" alt="Madame de Staël par François Gérard"
                  src="../img_stael/madame_de_stael.png"/>
              <span class="title_header">
                  
                  <cite>Considérations sur les principaux événemens<br/> de la révolution
                      françoise</cite>
                  <br/>
                  <span class="title_header_sub">de Germaine de Staël : un laboratoire
                      éditorial </span>
                  <br/>
              </span>
          </header>
          <div class="background_nav">
              <div class="topnav">
                  <ul>
                      <li>
                          <a href="../index.html">Accueil</a>
                      </li>
                      <li class="dropdown">
                          <a href="javascript:void(0)" class="dropbtn">Projet</a>
                          <!-- class "dropdown" necessary to show dropdown menu -->
                          <div class="dropdown-content">
                              <a href="introduction.html">Introduction</a>
                              <a href="objectifs.html">Objectifs du projet</a>
                              <a href="principes_editoriaux.html">Principes éditoriaux</a>
                              <a href="documentation_technique.html">Documentation
                                  technique</a>
                              
                          </div>
                      </li>
                      <li class="dropdown">
                          <a href="javascript:void(0)" class="dropbtn">Édition</a>
                          <div class="dropdown-content">
                              <a href="../html_stael/manuscrit_vol_1.html">Manuscrit</a>
                              <a href="../html_stael/edition_vol_1.html">Première édition</a>
                              <a href="../html_stael/index_noms.html">Index des noms</a>
                              
                          </div>
                      </li>
                      <li class="dropdown">
                          <a href="javascript:void(0)" class="dropbtn">À propos</a>
                          <div class="dropdown-content">
                              <a href="stael.html">Germaine de Staël</a>
                              <a href="considerations.html">Les <cite>Considérations</cite></a>
                              <a href="bibliographie.html">Bibliographie</a>
                          </div>
                      </li>
                     
                  </ul>
              </div>
          </div>
          <div class="main_content">
              <h2 class="title_page">Index des noms</h2>
        
          <xsl:apply-templates/>
          </div>
          
          <div class="background_nav">
              <div class="footer">
                  <a href="plan_site.html">Plan du site</a>
                  <a href="contact.html">Contact</a>
                  <a href="mentions_legales.html">Mentions légales</a>
              </div>
          </div>
          </body>
      </html>
  </xsl:template>
    
    <xsl:template match="teiHeader"></xsl:template> 
      
  <xsl:template match="head">
      <xsl:choose>
          <xsl:when test="parent::html"></xsl:when>
          <xsl:when test="parent::div">
              <h3>
              <xsl:apply-templates/>  
              
          </h3>
          </xsl:when>
         
      </xsl:choose>
     
  </xsl:template>
    
   
    
    <xsl:template match="person">
   
        <xsl:for-each select="persName">  
            
            <a class="persName">  <!-- <a> is anchor -->
           <xsl:attribute name="id">
               <xsl:value-of select="@xml:id"/>  
           </xsl:attribute> 
            <xsl:value-of select="surname"/>
           
            <xsl:text>, </xsl:text>
            <xsl:value-of select="forename"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="addName"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="nameLink"/>
          
        </a>
          
        </xsl:for-each> 
        <xsl:for-each select="birth">
                <xsl:text> (</xsl:text>   
                <xsl:value-of select="date"/>
                
                <xsl:text>-</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="death">  
                <xsl:value-of select="date"/> 
                <xsl:text>) </xsl:text>
       
        </xsl:for-each>
        
        <br/>
       
    
    </xsl:template>
    
    
    <xsl:template match="place">
   
            <a class="place">
              
                <xsl:attribute name="id">
                    <xsl:value-of select="@xml:id"/>  
                </xsl:attribute> 
                <xsl:apply-templates select="settlement"/>
                <xsl:text> (</xsl:text>
                <xsl:apply-templates select="country"/>
                <xsl:text>)</xsl:text>
            </a>
        
        <br/>
       
    
    </xsl:template>
    
    
    <xsl:template match="term">
        <a class="term">
            <xsl:attribute name="id">
                <xsl:value-of select="@xml:id"/>  
            </xsl:attribute> 
          
                <cite>
                    <xsl:value-of select="objectName"/>
                  
                </cite>     
                
                <xsl:text> (</xsl:text>
            
            <xsl:value-of select="name"/>
            
            <xsl:text>)</xsl:text>
             
        </a>
        
        <br/>
       
        
    </xsl:template>  
    
    
        
</xsl:stylesheet>