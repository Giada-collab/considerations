<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" encoding="UTF-8"/>

    <!-- html commun à toutes les pages -->

    <xsl:template match="/">
        <html>
            <head>
                <title>Considérations - première édition v. 1</title>
                <link rel="stylesheet" type="text/css" href="../css_stael/css_stael.css"/>
            </head>
            <body>
                <header class="clearfix">
                    <!--Public domain, via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Madame_de_Sta%C3%ABl.jpg-->

                    <img class="img_top" alt="Madame de Staël par François Gérard"
                        src="../img_stael/madame_de_stael.png"/>
                    <span class="title_header">

                        <cite>Considérations sur les principaux événements<br/> de la Révolution
                            française</cite>
                        <br/>
                        <span class="title_header_sub">de Germaine de Staël: un laboratoire
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
                                    <a href="manuscrit.html">Manuscrit</a>
                                    <a href="premiere_edition.html">Première édition</a>
                                    <a href="../html_stael/index_noms.html">Index des noms</a>

                                </div>
                            </li>
                            <li>
                                <a href="savoir_plus.html">En savoir plus</a>
                            </li>
                            <li class="topnav-right">
                                <a href="../xml_stael/edition_vol_1.xml">Fichier XML</a>
                            </li>
                            <li class="topnav-right">
                                <a href="../html_stael/principes_editoriaux.html#legende"
                                    >Légende</a>
                            </li>
                            <li class="topnav-right">
                                <a href="../html_stael/manuscrit.html">Retour à "Première
                                    édition"</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="main_content">
                    <h2 class="title_page">Volume I</h2>

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


    <!-- ne pas afficher des parties  -->

    <xsl:template match="teiHeader">   </xsl:template>

    <xsl:template match="fw">   </xsl:template>



    <xsl:template match="text">
        <xsl:if test="front | body">
            <div class="volume">
                <xsl:apply-templates/>
            </div>
        </xsl:if>   </xsl:template>

    <xsl:template match="pb">
        <xsl:choose>
            <xsl:when test="@n = '0'"> </xsl:when>
            <xsl:when test="@n = 'v'"> [<span class="addEditor"><span class="foreign_language"
                >Verso</span> du frontispice</span>] <hr class="finPage">
                    <span class="page">
                        <xsl:value-of select="@n"/>
                    </span>
                    <xsl:apply-templates/>
                </hr>
                <br/><br/>
            </xsl:when>
            
            <xsl:otherwise>
                <hr class="finPage">
                    <span class="page">
                        <xsl:value-of select="@n"/>
                    </span>
                    <xsl:apply-templates/>
                </hr>
                <br/>
                <br/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="anchor[@corresp]">
        <xsl:element name="a">
            <xsl:variable name="id" select="substring-after(@corresp, 'manuscrit_vol_1.xml')"> </xsl:variable>
            <xsl:attribute name="href">
                <xsl:value-of
                    select="concat('../html_stael/manuscrit_vol_1.html', $id)"
                />
            </xsl:attribute>
         
            
        
            <img class="manuscrit" alt="Lien vers le manuscrit" src="../img_stael/manuscrit.jpg"/> 
        </xsl:element>
   
    </xsl:template>


</xsl:stylesheet>
