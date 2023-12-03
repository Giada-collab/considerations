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

                        </ul>
                    </div>
                </div>
                <div class="main_content">
                    <br/>
                    <h2 class="title_page"><a href="premiere_edition.html">Première édition</a> -
                        Volume I</h2>

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

    <!-- background -->

    <xsl:template match="titlePage">

        <div class="titlePage">
            <xsl:apply-templates/>
        </div>

    </xsl:template>

    <xsl:template match="pb[@facs = '#frontispice_verso']">   </xsl:template>


    <xsl:template match="div">
        <div>
            <xsl:attribute name="class">
                <xsl:value-of select="@type"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </div>   </xsl:template>

    <xsl:template match="note[@resp = '#tesserS']">

        <span class="tooltip">
            <img class="noteEditoriale" alt="Note éditoriale" src="../img_stael/note_editoriale.jpg"/>

            <span class="tooltiptext">

                <xsl:apply-templates/>

            </span>
        </span>

    </xsl:template>


    <xsl:template match="ref">

        <xsl:element name="a">
            <xsl:variable name="id" select="substring-after(@target, 'manuscrit_vol_1.xml')"> </xsl:variable>
            <xsl:attribute name="href">
                <xsl:value-of select="concat('../html_stael/manuscrit_vol_1.html', $id)"/>
            </xsl:attribute>

            <xsl:apply-templates/>

        </xsl:element>

    </xsl:template>


    <!-- Frontispice -->

    <xsl:template match="titlePart[@type = 'main']">
        <span class="titlePartMain">
            <xsl:apply-templates/>
        </span>

    </xsl:template>


    <xsl:template match="byline | docImprint | titlePart[@type = 'sub']">
        <span class="byline">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="epigraph">
        <div class="epigraph">
            <xsl:apply-templates/>
        </div>
    </xsl:template>



    <xsl:template match="pb">
        <xsl:choose>
            <xsl:when test="@n = '0'"> </xsl:when>
            <xsl:when test="@n = 'v'">
                <span class="page">
                    <xsl:value-of select="@n"/>
                </span>
                <xsl:apply-templates/>
                <br/>
                <br/>
            </xsl:when>
            <xsl:when test="@n = '1'">
                <span class="page">
                    <xsl:value-of select="@n"/>
                </span>
                <xsl:apply-templates/>
                <br/>
                <br/>
            </xsl:when>


            <xsl:otherwise>
                <br/>
                <br/>

                <br/>
                <span class="page">
                    <xsl:value-of select="@n"/>
                    <xsl:text>                                                              </xsl:text>
                </span>
                <xsl:apply-templates/>
                <br/>
                <br/>
                <br/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="anchor[@corresp]">
        <xsl:element name="a">
            <xsl:variable name="id" select="substring-after(@corresp, 'manuscrit_vol_1.xml')"/>
            <xsl:attribute name="id" select="@xml:id"/>
            <xsl:attribute name="href">
                <xsl:value-of select="concat('../html_stael/manuscrit_vol_1.html', $id)"/>
            </xsl:attribute>

            <img class="manuscrit" alt="Lien vers le manuscrit" src="../img_stael/manuscrit.jpg"/>
        </xsl:element>

    </xsl:template>

    <xsl:template match="lb">
        <br/>

    </xsl:template>



    <xsl:template match="head">
        <xsl:choose>
            <xsl:when test="@type = 'titleWork'">
                <h5>
                    <xsl:apply-templates/>
                </h5>

            </xsl:when>
            <xsl:otherwise>
                <h6>
                    <xsl:apply-templates/>
                </h6>

            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>



    <xsl:template match="title[@rend = 'italic']">
       
                <cite>
                    <xsl:apply-templates/>
                </cite>
    </xsl:template>

    <xsl:template match="seg">
        
       
            <xsl:choose>
                <xsl:when test="@subtype = 'add' and (@xml:id='PrefaceEdEd' or @xml:id='PrefaceAuEd')">
                    <mark class="add">
                        <xsl:apply-templates/>
                    </mark>
                </xsl:when>
                <xsl:when test="@subtype = 'add'">
                    <xsl:element name="a">
                        <xsl:variable name="id" select="substring-after(@corresp, 'manuscrit_vol_1.xml')"/>
                        <xsl:attribute name="id" select="@xml:id"/>
                        <xsl:attribute name="href">
                            <xsl:value-of select="concat('../html_stael/manuscrit_vol_1.html', $id)"/>
                        </xsl:attribute>
                    <mark class="add">
                        <xsl:apply-templates/>
                    </mark>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="@subtype = 'subst'">
                    <xsl:element name="a">
                        <xsl:variable name="id" select="substring-after(@corresp, 'manuscrit_vol_1.xml')"/>
                        <xsl:attribute name="id" select="@xml:id"/>
                        <xsl:attribute name="href">
                            <xsl:value-of select="concat('../html_stael/manuscrit_vol_1.html', $id)"/>
                        </xsl:attribute>
                    <mark class="subst">
                        <xsl:apply-templates/>
                    </mark>
                    </xsl:element> 
                </xsl:when>
               
             <xsl:otherwise>
                 <xsl:apply-templates/>   
                 
             </xsl:otherwise>
            </xsl:choose>
    </xsl:template>
    
    
    
    
    <xsl:template match="hi">
        <xsl:choose>
            <xsl:when test="@rend = 'bold'">
                <span class="letterStart"><xsl:apply-templates/> </span>
            </xsl:when>
            <xsl:when test="@rend = 'small-caps'">
                <span class="wordStart"><xsl:apply-templates/> </span>
            </xsl:when>
            <xsl:when test="@rend = 'italic'">
                <cite>
                    <xsl:apply-templates/>       
                </cite>
            </xsl:when>
            <xsl:when test="@rend = 'superscript'">
                
                <span class="superscript">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>
            
            <xsl:otherwise>
                <xsl:apply-templates/>  
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>
    
    <xsl:template match="choice">
        
        <span class="tooltipCorr">
            <xsl:value-of select="corr"/>
            <span class="tooltiptextCorr">
                <xsl:value-of select="sic"/>
                
            </span>
        </span>
    </xsl:template>

    <xsl:template match="rs">
     
        <xsl:element name="a">
            <xsl:variable name="id" select="substring-after(@ref, 'index_noms.xml')"> </xsl:variable>
            <xsl:attribute name="href">
                <xsl:value-of select="concat('../html_stael/index_noms.html', $id)"/>
            </xsl:attribute>
        
            <xsl:apply-templates/>
        </xsl:element>
        
    </xsl:template>
    
<xsl:template match="cit">
    <blockquote>
        
        <xsl:apply-templates/>
    </blockquote>
</xsl:template>
    
    <xsl:template match="graphic">
        <xsl:element name="a">
        <xsl:attribute name="href">
            <xsl:value-of select="@url"/>
        </xsl:attribute>    
         <xsl:attribute name="id">
             <xsl:value-of select="@xml:id"/>
         </xsl:attribute>  
        </xsl:element>
    </xsl:template> 
    
    
    

</xsl:stylesheet>
