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
                <title>Considérations - manuscrit v. 1</title>
                <link rel="stylesheet" type="text/css" href="../css_stael/css_stael.css" />
            </head>
            <body>
                <header>
                    <!--Public domain, via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Madame_de_Sta%C3%ABl.jpg-->
                    <div id="img_top">
                        <img width="200" height="200" alt="Madame de Staël par François Gérard"
                            src="../img_stael/madame_de_stael.png"/>
                    </div>
                    <div class="title_header">
                        <cite>Considérations sur les principaux événements de la Révolution française</cite>
                        <p>de Germaine de Staël : un laboratoire éditorial</p>
                    </div>
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
                                    <a href="documentation_technique.html">Documentation technique</a>
                                    
                                </div>
                            </li>
                            <li class="dropdown">
                                <a href="javascript:void(0)" class="dropbtn">Édition</a>
                                <div class="dropdown-content">
                                    <a href="manuscrit.html">Manuscrit</a>
                                    <a href="premiere_edition.html">Première édition</a>
                                    
                                </div>
                            </li>
                            <li>
                                <a href="savoir_plus.html">En savoir plus</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="main_content">
                    <h2 class="title_page">Volume I</h2>
                    <div class="sidenav">
                        <a href="manuscrit.html">Retour à <q>Manuscrit</q></a>
                        <a href="manuscrit_vol_1.html">Deuxième volume</a>
                        <a href="manuscrit_vol_2.html">Troisième volume</a>
                        
                    </div>
                
                </div>

                    <xsl:apply-templates/>
                
                
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
    
    <xsl:template match="teiHeader">
             </xsl:template> 
    
    <xsl:template match="//div[@type='volume']">
       <div class="volume">
            <xsl:apply-templates/>
       </div>
             </xsl:template>    
    
    
    
    
    
    
    
    
    
    
    
</xsl:stylesheet>



