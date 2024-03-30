<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" encoding="UTF-8"/>

    <!-- html commun à toutes les pages -->

    <xsl:template match="/">
        <html>
            
            
            
            
            <head>
                <title>Considérations - manuscrit v. 1</title>
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
                                <a href="../xml_stael/manuscrit_vol_1.xml">XML</a>
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
                    <h2 class="title_page">Manuscrit</h2>
                    <br />
                    <b class="fiche">Institut de conservation</b> : Bibliothèque nationale de
                    France. Département des Manuscrits<br/>
                    
                    <b class="fiche">Cote</b> : NAF 14606-14608<br/>
                    
                    <b class="fiche"> Titre</b> : le manuscrit n'a pas de titre <br/>
                    
                    <b class="fiche"> Auteur</b> :  Staël-Holstein, Germaine de <br/>
                    
                    <b class="fiche">Description du contenu</b> : copie avec variantes
                    autographes<br/>
                    
                    <b class="fiche">Langue</b> : français<br/>
                    
                    <b class="fiche">Acquisition</b> : Achat en vente publique, 31 mai 1963, A.
                    22856. Le manuscrit provenait de Jacques Lion.<br/>
                    <b class="fiche">Période de composition</b> : 1813(?)-1817<br/>
                    
                    <b class="fiche">Support</b> : Papier vergé, filigrané et plié in-folio<br/>
                    
                    <b class="fiche">Format</b> : 320 × 250 mm <br/>
                    
                    <b class="fiche">Volumes</b> : volume I (313 f.), volume II (326 f.), volume III (390 f.) <a href="https://gallica.bnf.fr/ark:/12148/btv1b10084773d">Document numérisé</a><br/>
                    <b class="fiche">Reliure</b> : à la cathédrale, veau violet<br/>
                    
                    <b class="fiche">Numérotation des pages</b> : foliotation en chiffres arabes
                    dans l'angle supérieur gauche et au <cite>recto</cite> et <cite>verso</cite> de chaque feuillet<br/>
                    
                    
                    <b class="fiche">Note sur cette édition</b> : il est actuellement possible d'avoir accès
                    à la transcription d'une partie du  volume I.<br/>
                    <b class="fiche">Source des métadonnées : <a href="https://archivesetmanuscrits.bnf.fr/ark:/12148/cc6176b">Bibliothèque nationale de
                        France.</a></b>
                    <br/>
                    
                    
                
                </div>
                
                <div class="main_content">
                    <br/>
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

    <xsl:template match="standOff">   </xsl:template>


    <xsl:template match="div[@type = 'volume']">
        <div class="volume">
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



    <xsl:template match="pb">
        <xsl:choose>
            <xsl:when test="@n = '1r'">
                <span class="folio">
                    <xsl:value-of select="@n"/>
                </span>
                <br/>
                <br/> [<span class="addEditor">Lettre d'Albertine de Staël à François Gérard</span>] <br/>
                <br/>
            </xsl:when>
            <xsl:otherwise>
                <hr class="finPage">
                    <span class="folio">
                        <xsl:value-of select="@n"/>
                    </span>
                </hr>
                <br/>
                <br/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <!--  variantes -->

    <xsl:template match="del[@hand = '#staelA']">
        <span class="delStaelA">
            <xsl:choose>
                <xsl:when test="child::gap[@reason = 'illegible']">
                    <xsl:text>xxx</xsl:text>

                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates/>
                </xsl:otherwise>
            </xsl:choose>

        </span>
    </xsl:template>





    <xsl:template match="del">
        <xsl:choose>
            <xsl:when test="@hand = '#unknown'">
                <span class="delUnknown">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

            <xsl:when test="@hand = '#schlegelW'">
                <span class="delSchlegelW">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

            <xsl:when test="@hand = '#stael'">
                <span class="delStael">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

        </xsl:choose>

    </xsl:template>

    <xsl:template match="add">
        <xsl:choose>
            <xsl:when test="@hand = '#unknown'">
                <span class="addUnknown">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

            <xsl:when test="@hand = '#schlegelW'">
                <span class="addSchlegelW">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

            <xsl:when test="@hand = '#stael'">
                <span class="addStael">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>
            <xsl:when test="@hand = '#staelA'">
                <span class="addStaelA">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

        </xsl:choose>

    </xsl:template>

    <!-- .................... -->

    <xsl:template match="title">
        <xsl:choose>
            <xsl:when test="@rend = 'underlined'">
       
        <span class="underlined">
            
                   
            
                        <xsl:apply-templates/>
                        
        </span>
               
        </xsl:when>
            <xsl:when test="@rend = 'italic'">
                
                <cite>
                   
                        
                        <xsl:apply-templates/>
                        
                    
                </cite>
                
                
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="closer">
        <p>
            <xsl:value-of select="salute"/>
        </p>
        <br/>

        <p>
            
                <xsl:value-of select="signed"/>



        </p>
        <br/>
        <p>
            <xsl:value-of select="dateline"/>
        </p>
        <br/>


    </xsl:template>




    <xsl:template match="address">
        <p>
            <xsl:value-of select="addrLine[1]"/>
        </p>

        <p>
           

                <xsl:value-of select="addrLine[2]"/>


        </p>
        <br/>


    </xsl:template>


    <xsl:template match="lb">
        <br/>
        <xsl:apply-templates/>   </xsl:template>


    <xsl:template match="head">
        <xsl:choose>
            <xsl:when test="@rend = 'underlined'">
                
                <p>
                    <span class="underlined">
                        <xsl:apply-templates/>
                    </span>
                </p>   
                
            </xsl:when>
            
            
            <xsl:when test="@type = 'titlePart'">
                <div title="titlePart"/>
            </xsl:when>

            <xsl:when test="@subtype = 'nChapter'">
                <div title="titleChapter"/>
                <xsl:apply-templates/>
                <br/>
                <br/>
            </xsl:when>
            <xsl:when test="@subtype = 'main'">
                <div title="mainTitleChapter"/>
                <xsl:apply-templates/>
                <br/>
                <br/>
            </xsl:when>

        </xsl:choose>
    </xsl:template>


    <xsl:template match="hi[@rend = 'superscript']">

        <span class="superscript">
            <xsl:apply-templates/>
        </span>
    </xsl:template>


    <xsl:template match="choice">

        <span class="tooltipReg">
            <xsl:value-of select="reg"/>
            <span class="tooltiptextReg">
                <xsl:value-of select="orig"/>

            </span>
        </span>
    </xsl:template>



    <xsl:template match="add[@type = 'addition']">
        <span class="addition">

            <xsl:apply-templates/>

        </span>


    </xsl:template>

    <!-- Revoir tooltip entités nommées -->
   

    <xsl:template match="anchor[@corresp]">
        <xsl:element name="a">
            <xsl:variable name="id" select="substring-after(@corresp, 'edition_vol_1.xml')"/>
            <xsl:attribute name="id" select="@xml:id"/>
            <xsl:attribute name="href">
                <xsl:value-of select="concat('../html_stael/edition_vol_1.html', $id)"/>
            </xsl:attribute>
            
            <img class="book" alt="Lien vers la première édition" src="../img_stael/book.jpg"/>
        </xsl:element>
        
    </xsl:template>
    
    
   
    
   
    
    

</xsl:stylesheet>
