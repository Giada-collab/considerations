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
                            <li class="topnav-right">
                                <a href="../xml_stael/edition_vol_1.xml">XML</a>
                            </li>
                            <li class="topnav-right">
                                <a href="../html_stael/principes_editoriaux.html#legende"
                                    >Légende</a>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="main_content">
                    
                        <br />
                        <h2 class="title_page">Première édition</h2>
                        <br />
                        <b class="fiche"> Titre</b> : <cite>Considérations sur les principaux événemens de la
                            Révolution françoise, ouvrage posthume de madame la baronne de Staël, publié par M. le
                            duc de Broglie et M. le baron de Staël </cite><br />
                        <b class="fiche"> Auteur</b> : Staël-Holstein, Germaine de <br />
                        <b class="fiche">Éditeurs scientifiques</b> : Broglie, Victor de ; Staël-Holstein,
                        Auguste-Louis de<br />
                        <b class="fiche">Publication</b> : Paris, Delaunay ; Bossange et Masson, 1818<br />
                        <b class="fiche">Langue</b> : français<br />
                        <b class="fiche">Description matérielle </b> : : 3 t. ; in-8<br />
                        <b class="fiche">Institut de conservation</b> : Bibliothèque nationale de France.
                        Département Philosophie, histoire, sciences de l'homme<br />
                    <b class="fiche">Cote</b> : <a href="https://gallica.bnf.fr/ark:/12148/bpt6k3056628z">volume I 8-LA32-1128
                        (1)</a>,
                    <a href="https://gallica.bnf.fr/ark:/12148/bpt6k3053721g"
                        >volume II I 8-LA32-1128 (2)</a>, <a
                            href="https://gallica.bnf.fr/ark:/12148/bpt6k42319208">volume III I 8-LA32-1128 (3)</a> <br />
                        <b class="fiche">Note sur l'édition de ce
                            site web</b> : il est actuellement possible d'avoir accès à la transcription
                        d'une partie du volume I.<br />
                    <b class="fiche">Source des métadonnées</b> :<a
                        href="https://catalogue.bnf.fr/ark:/12148/cb313971643">Bibliothèque nationale de France</a>
                        <br/>
                    
                    <br/>
                    <h2 class="title_page">Volume I</h2>
                            <br/>
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

        >

            <xsl:apply-templates/>

        

    </xsl:template>


    <!-- Frontispice -->

    <xsl:template match="titlePart[@type = 'main']">
        <span class="titlePartMain">
            <xsl:apply-templates/>
        </span>

    </xsl:template>


    <xsl:template match="byline">
        <span class="byline">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="quote|bibl">
        <div class="epigraph">
            <xsl:apply-templates/>
            </div>
    </xsl:template>

    <xsl:template match="docImprint | titlePart[@type = 'sub']">
        <span class="titlePartEnd">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="pb">
        <xsl:choose>
            <xsl:when test="@n = '0'"> </xsl:when>
            <xsl:when test="@n = 'v' ">
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
                   
                </span>
                <xsl:apply-templates/>
                <br/>
                <br/>
                <br/>
            </xsl:otherwise>
        </xsl:choose>
        <!--  !!!!! affichage du facsimile temporairement suspendu !!!!!  
        <xsl:choose>
       
            <xsl:when test="@xml:id='frontispice_verso'"></xsl:when>
            <xsl:otherwise>
       
        <img class="facsimile">     
            <xsl:attribute name="src">
                <xsl:value-of select="@facs"/>
            </xsl:attribute>  
            <xsl:attribute name="alt">
                <xsl:value-of select="@xml:id"/>  
            </xsl:attribute>
        </img>
            </xsl:otherwise>
        </xsl:choose>
         --> 
    </xsl:template>

    <xsl:template match="milestone[@corresp]">
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
     
       
        
            <xsl:apply-templates/>
        
    </xsl:template>
    
<xsl:template match="cit">
    <blockquote>
        
        <xsl:apply-templates/>
    </blockquote>
</xsl:template>
    
  
  <!-- AUTRE SCRIPT -->  
    <xsl:template match="ref">
        
        <xsl:element name="a">
            <xsl:variable name="id" select="substring-after(@target, 'manuscrit_vol_1.xml')"> </xsl:variable>
            <xsl:attribute name="href">
                <xsl:value-of select="concat('../html_stael/manuscrit_vol_1.html', $id)"/>
            </xsl:attribute>
            
            <xsl:apply-templates/>
            
        </xsl:element>
        
    </xsl:template>
    
    
    

</xsl:stylesheet>
