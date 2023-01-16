<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Grammar._Default" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="./images/Book_icon.gif">
    <title>文法快e通</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="強大的文法搜尋系統，隨心所欲搜索你想搜索的英文文法教學。" />
    <meta name="keywords" content="" />

    <link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
    
    <!-- Animate.css -->
    <link rel="stylesheet" href="css2.0/animate.css?v=1">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="css2.0/icomoon.css?v=1">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css2.0/bootstrap.css?v=1">
    <!-- Theme style  -->
    <link rel="stylesheet" href="css2.0/style.css">

    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
    <p style="display:none" id="eIP" runat="server"></p>
    <script type="text/javascript" src="Marquee.js"></script>

</head>
<body>

    <div class="fh5co-loader"></div>

    <div id="page">

        <nav class="fh5co-nav" role="navigation">
            <div class="container">
                <div class="row">
                    <div class="col-xs-4 text-left">
                        <a href="#" style="padding:0">
                            <div class="container_" id="fh5co-logo" style="user-select: none;">
                                <section class="name"><span class="letter letter--0">文</span><span class="letter letter--1">法</span><span class="letter letter--2">快</span><span class="letter letter--3">E</span><span class="letter letter--4">通</span></section>
                                <section class="surname"><span class="letter letter--0">G</span><span class="letter letter--1">r</span><span class="letter letter--2">a</span><span class="letter letter--3">m</span><span class="letter letter--4">m</span><span class="letter letter--5">a</span><span class="letter letter--6">r</span></section>
                            </div>
                        </a>
                        <!-- div id="fh5co-logo"><a href="#"><font color="#FFD000">文法</font>快<font color="#FF6670">e</font>通<font color="#77A88D">。</font></a></!-->
                        <!-- img src="final2.png" alt="文法快e通" id="fh5co-logo"> -->
                    </div>

                    <div class="right-menu menu-1">
                        <ul>
                            <li><a href="#"><nobr>搜索資源</nobr></a></li>
                            <li><a href="Related_Websites.aspx"><nobr>相關網站</nobr></a></li>
                            <li><a href="Wonderful_Professor.aspx"><nobr>相關介紹</nobr></a></li>
                            <li><a href="https://ilearning.csie.stust.edu.tw/index/" target="_blank"><nobr>關於iLab</nobr></a></li>
                             
                            <!--
                            <li class="has-dropdown">
                                <a href="https://ilearning.csie.stust.edu.tw/index/" target="_blank"><nobr>關於iLab</nobr></a>
                                <ul class="dropdown">
                                    <li><a href="https://ilearning.csie.stust.edu.tw/EST/" target="_blank"><nobr>英文學習平台</nobr></a></li>
                                    <li><a href="https://ilearning.csie.stust.edu.tw/Computer/article.aspx" target="_blank"><nobr>資訊教育雲</nobr></a></li>
                                    <li><a href="https://ilearning.csie.stust.edu.tw/Algorithm/" target="_blank"><nobr>演算法</nobr></a></li>
                                    <li><a href="https://ilearning.csie.stust.edu.tw/Calculus/" target="_blank"><nobr>微積分教學平台</nobr></a></li>
                                </ul>
                            </li>
                            -->
                        </ul>
                    </div>

                </div>

            </div>
        </nav>

        <header id="fh5co-header" class="fh5co-cover" role="banner">
            <div class="overlay">
                <canvas id="word-Marquee"></canvas> 
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 text-center">
                        <div class="display-t">
                            <div class="display-tc animate-box" data-animate-effect="fadeIn">
                                <h1 style="user-select: none;">Whatever you <del>wanted</del><ins>want</ins>, just search!</h1>
                                <div class="row">
                                    <form class="form-inline" method="POST" enctype="application/x-www-form-urlencoded" id="fh5co-header-subscribe" onsubmit="return false">
                                        <div class="col-sm-3 col-md-2"></div>
                                        <div class="col-xs-12 col-sm-6 col-md-8">
                                            <div class="form-group">
                                                <input type="text" class="form-control field" id="send_something" name="Keywords" autocomplete="off" placeholder="Enter your keywords" />
                                                <!-- button type="button" class="btn btn-default" id="sendthing" name="submit">Search</button-->
                                                <div class="icons-container">
                                                    <div class="icon-tosearch" id="sendthing" name="submit" type="button"></div>
                                                    <div class="icon-close">
                                                        <div class="x-up"></div>
                                                        <div class="x-down"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3 col-md-2"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="fh5co-services" id="search_result">
            <!--承現輸出結果-->
        </div>

        <!--
        <div id="fh5co-services" class="fh5co-bg-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn" id="card1">
                            <img src="../images/1.jpg" alt="BBC Learning English">
                            <div class="card_container">
                                <h2><b>BBC Learning English</b></h2> 
                                <p>利用英文掌握全球時事主題多元化，培養單字詞彙、文法、發音、聽力、會話和閱讀能力等等，
                                同時也提供學習測驗，檢視學習成效。如果你想練習進階聽力，那麼 BBC Radio iPlay 廣播電台絕對是你的好選擇！</p> 
                            </div>
                            <a href="https://www.bbc.co.uk/learningenglish/" class="btn btn-success" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn" id="card2">
                            <img src="../images/2.jpg" alt="ELLLO Learn English">
                            <div class="card_container">
                                <h2><b>ELLLO Learn English</b></h2> 
                                <p>生活化的英文聽力練習教材，有各地口語發音與上千種教材，
                                按難易度分為初級、中級、進階，附有逐字稿、單字解說、測驗題，共有七種不同的練習方式。
                                若你正在準備托福、多益或雅思，那你絕對不能錯過這個網站的「News Center」學習單元，幫助你的英文測驗能力再加分！</p> 
                            </div>
                            <a href="https://www.elllo.org/" class="btn btn-danger" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn" id="card3">
                            <img src="../images/3.jpg" alt="Voicetube">
                            <div class="card_container">
                                <h2><b>Voicetube</b></h2> 
                                <p>這是一個由台灣團隊所開發的線上英文學習平台，
                                將大量 YouTube 上的節目、新聞、MV、短片轉化成學英文的教材，有多種主題與程度分級，
                                不僅提供字幕即時查單字功能，還有聽力、口說等測驗。另外每天都有「主編精選」，精心挑出一部影片做詳細解說，
                                讓你的學習更全面！</p> 
                            </div>
                            <a href="https://www.voicetube.com/" class="btn btn-warning" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box" data-animate-effect="fadeIn">
                            <span class="icon">
                                <i class="fa fa-globe fa-2x" aria-hidden="true"></i>
                            </span>
                            <a href="https://www.bbc.co.uk/learningenglish/">
                                <h2 style="color: #392f2f; font-family: Arial;"><b>BBC Learning English</b></h2>
                            </a>
                            <p>利用英文掌握全球時事主題多元化，培養單字詞彙、文法、發音、聽力、會話和閱讀能力等等，
                                同時也提供學習測驗，檢視學習成效。如果你想練習進階聽力，那麼 BBC Radio iPlay 廣播電台絕對是你的好選擇！</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box" data-animate-effect="fadeIn">
                            <span class="icon">
                                <i class="fa fa-users fa-2x" aria-hidden="true"></i>
                            </span>
                            <a href="https://www.elllo.org/">
                                <h2 style="color: #392f2f; font-family: Arial;"><b>ELLLO Learn English</b></h2>
                            </a>
                            <p>生活化的英文聽力練習教材，有各地口語發音與上千種教材，
                                按難易度分為初級、中級、進階，附有逐字稿、單字解說、測驗題，共有七種不同的練習方式。
                                若你正在準備托福、多益或雅思，那你絕對不能錯過這個網站的「News Center」學習單元，幫助你的英文測驗能力再加分！</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box" data-animate-effect="fadeIn">
                            <span class="icon">
                                <i class="fa fa-caret-square-o-right fa-2x" aria-hidden="true"></i>
                            </span>
                            <a href="https://www.voicetube.com/">
                                <h2 style="color: #392f2f; font-family: Arial;"><b>Voicetube</b></h2>
                            </a>
                            <p>這是一個由台灣團隊所開發的線上英文學習平台，
                                將大量 YouTube 上的節目、新聞、MV、短片轉化成學英文的教材，有多種主題與程度分級，
                                不僅提供字幕即時查單字功能，還有聽力、口說等測驗。另外每天都有「主編精選」，精心挑出一部影片做詳細解說，
                                讓你的學習更全面！</p>
                        </div>
                    </div>
                    -->

        <div id="fh5co-started">
            <div class="container">
                <div class="row animate-box">
                    <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                        <h2><nobr>-熱門文法關鍵字-</nobr></h2>
                        <p><nobr>以下為常用到常用到的文法</nobr></p>
                    </div>
                </div>

                <ol class="podium-rank">
                    <li>
                        <div class="fh5co-project animate-box text-center" data-animate-effect="fadeIn">
                            <a href="#" onclick="getElementById('send_something').value=$('#recommend1').text();document.getElementById('sendthing').click();">
                                <div class="image">
                                    <svg id="place-1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 180" enable-background="new 0 0 180 180" xml:space="preserve"><path fill="#7fd1fb" d="M124.6,90.1l4.2-0.3l0.1-4.3l4.2-0.9l-0.5-4.3l4.1-1.4l-1-4.2l3.9-1.9l-1.5-4l3.6-2.3l-2-3.8l3.3-2.8l-2.5-3.5l2.9-3.2l-2.9-3.2l2.5-3.5l-3.3-2.8l2-3.8l-3.6-2.4l1.5-4l-3.9-1.9l1-4.2l-4.1-1.4l0.5-4.3l-4.2-0.9l-0.1-4.3l-4.3-0.3l-0.6-4.3l-4.3,0.2l-1.1-4.2L114.4,9l-1.6-4l-4.1,1.3l-2.1-3.7l-3.9,1.8L100,0.8l-3.7,2.3l-3-3.1L90,2.7L86.7,0l-3,3.1L80,0.8l-2.6,3.4l-3.9-1.8l-2.1,3.7L67.3,5l-1.6,4l-4.2-0.8l-1.1,4.2L56,12.1l-0.6,4.3l-4.3,0.3L51.1,21l-4.2,0.9l0.5,4.3l-4.1,1.4l1,4.2l-3.9,1.9l1.5,4l-3.6,2.3l2,3.8l-3.3,2.8l2.5,3.5l-2.9,3.2l2.9,3.2l-2.5,3.5l3.3,2.8l-2,3.8l3.6,2.4l-1.5,4l3.9,1.9l-1,4.2l4.1,1.4l-0.5,4.3l4.2,0.9l0.1,4.3l4.3,0.3l-30.6,73.9l27.5-11.4L63.6,180L90,116.3l26.4,63.7l11.4-27.5l27.5,11.4L124.6,90.1z M90,18.9c19.1,0,34.5,15.5,34.5,34.6C124.5,72.5,109.1,88,90,88c-19.1,0-34.5-15.5-34.5-34.6C55.5,34.4,70.9,18.9,90,18.9z"/></svg>
                                </div>
                                <div class="content">
                                    <h2 style="color: aliceblue;">First</h2>
                                    <h3 style="color: aliceblue;" id="recommend1" runat="server"></h3>
                                    <span id="recommend1_1" runat="server"></span>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fh5co-project animate-box text-center" data-animate-effect="fadeIn">
                            <a href="#" onclick="getElementById('send_something').value=$('#recommend2').text();document.getElementById('sendthing').click();">
                                <div class="image">
                                    <svg id="place-2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 180" enable-background="new 0 0 180 180" xml:space="preserve"><path fill="#fd6470" d="M124.6,90.1l4.2-0.3l0.1-4.3l4.2-0.9l-0.5-4.3l4.1-1.4l-1-4.2l3.9-1.9l-1.5-4l3.6-2.3l-2-3.8l3.3-2.8l-2.5-3.5l2.9-3.2l-2.9-3.2l2.5-3.5l-3.3-2.8l2-3.8l-3.6-2.4l1.5-4l-3.9-1.9l1-4.2l-4.1-1.4l0.5-4.3l-4.2-0.9l-0.1-4.3l-4.3-0.3l-0.6-4.3l-4.3,0.2l-1.1-4.2L114.4,9l-1.6-4l-4.1,1.3l-2.1-3.7l-3.9,1.8L100,0.8l-3.7,2.3l-3-3.1L90,2.7L86.7,0l-3,3.1L80,0.8l-2.6,3.4l-3.9-1.8l-2.1,3.7L67.3,5l-1.6,4l-4.2-0.8l-1.1,4.2L56,12.1l-0.6,4.3l-4.3,0.3L51.1,21l-4.2,0.9l0.5,4.3l-4.1,1.4l1,4.2l-3.9,1.9l1.5,4l-3.6,2.3l2,3.8l-3.3,2.8l2.5,3.5l-2.9,3.2l2.9,3.2l-2.5,3.5l3.3,2.8l-2,3.8l3.6,2.4l-1.5,4l3.9,1.9l-1,4.2l4.1,1.4l-0.5,4.3l4.2,0.9l0.1,4.3l4.3,0.3l-30.6,73.9l27.5-11.4L63.6,180L90,116.3l26.4,63.7l11.4-27.5l27.5,11.4L124.6,90.1z M90,18.9c19.1,0,34.5,15.5,34.5,34.6C124.5,72.5,109.1,88,90,88c-19.1,0-34.5-15.5-34.5-34.6C55.5,34.4,70.9,18.9,90,18.9z"/></svg>
                                </div>
                                <div class="content">
                                    <h2 style="color: aliceblue;">Second</h2>
                                    <h3 style="color: aliceblue;" id="recommend2" runat="server"></h3>
                                    <span id="recommend2_1" runat="server"></span>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fh5co-project animate-box text-center" data-animate-effect="fadeIn">
                            <a href="#" onclick="getElementById('send_something').value=$('#recommend3').text();document.getElementById('sendthing').click();">
                                <div class="image">
                                    <svg id="place-3" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 180" enable-background="new 0 0 180 180" xml:space="preserve"><path fill="#ffffff" d="M124.6,90.1l4.2-0.3l0.1-4.3l4.2-0.9l-0.5-4.3l4.1-1.4l-1-4.2l3.9-1.9l-1.5-4l3.6-2.3l-2-3.8l3.3-2.8l-2.5-3.5l2.9-3.2l-2.9-3.2l2.5-3.5l-3.3-2.8l2-3.8l-3.6-2.4l1.5-4l-3.9-1.9l1-4.2l-4.1-1.4l0.5-4.3l-4.2-0.9l-0.1-4.3l-4.3-0.3l-0.6-4.3l-4.3,0.2l-1.1-4.2L114.4,9l-1.6-4l-4.1,1.3l-2.1-3.7l-3.9,1.8L100,0.8l-3.7,2.3l-3-3.1L90,2.7L86.7,0l-3,3.1L80,0.8l-2.6,3.4l-3.9-1.8l-2.1,3.7L67.3,5l-1.6,4l-4.2-0.8l-1.1,4.2L56,12.1l-0.6,4.3l-4.3,0.3L51.1,21l-4.2,0.9l0.5,4.3l-4.1,1.4l1,4.2l-3.9,1.9l1.5,4l-3.6,2.3l2,3.8l-3.3,2.8l2.5,3.5l-2.9,3.2l2.9,3.2l-2.5,3.5l3.3,2.8l-2,3.8l3.6,2.4l-1.5,4l3.9,1.9l-1,4.2l4.1,1.4l-0.5,4.3l4.2,0.9l0.1,4.3l4.3,0.3l-30.6,73.9l27.5-11.4L63.6,180L90,116.3l26.4,63.7l11.4-27.5l27.5,11.4L124.6,90.1z M90,18.9c19.1,0,34.5,15.5,34.5,34.6C124.5,72.5,109.1,88,90,88c-19.1,0-34.5-15.5-34.5-34.6C55.5,34.4,70.9,18.9,90,18.9z"/></svg>
                                </div>
                                <div class="content">
                                    <h2 style="color: aliceblue;">Third</h2>
                                    <h3 style="color: aliceblue;" id="recommend3" runat="server"></h3>
                                    <span id="recommend3_1" runat="server"></span>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fh5co-project animate-box text-center" data-animate-effect="fadeIn">
                            <a href="#" onclick="getElementById('send_something').value=$('#recommend4').text();document.getElementById('sendthing').click();">
                                <div class="image">
                                    <svg id="place-4" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 180" enable-background="new 0 0 180 180" xml:space="preserve"><path fill="#fddc32" d="M124.6,90.1l4.2-0.3l0.1-4.3l4.2-0.9l-0.5-4.3l4.1-1.4l-1-4.2l3.9-1.9l-1.5-4l3.6-2.3l-2-3.8l3.3-2.8l-2.5-3.5l2.9-3.2l-2.9-3.2l2.5-3.5l-3.3-2.8l2-3.8l-3.6-2.4l1.5-4l-3.9-1.9l1-4.2l-4.1-1.4l0.5-4.3l-4.2-0.9l-0.1-4.3l-4.3-0.3l-0.6-4.3l-4.3,0.2l-1.1-4.2L114.4,9l-1.6-4l-4.1,1.3l-2.1-3.7l-3.9,1.8L100,0.8l-3.7,2.3l-3-3.1L90,2.7L86.7,0l-3,3.1L80,0.8l-2.6,3.4l-3.9-1.8l-2.1,3.7L67.3,5l-1.6,4l-4.2-0.8l-1.1,4.2L56,12.1l-0.6,4.3l-4.3,0.3L51.1,21l-4.2,0.9l0.5,4.3l-4.1,1.4l1,4.2l-3.9,1.9l1.5,4l-3.6,2.3l2,3.8l-3.3,2.8l2.5,3.5l-2.9,3.2l2.9,3.2l-2.5,3.5l3.3,2.8l-2,3.8l3.6,2.4l-1.5,4l3.9,1.9l-1,4.2l4.1,1.4l-0.5,4.3l4.2,0.9l0.1,4.3l4.3,0.3l-30.6,73.9l27.5-11.4L63.6,180L90,116.3l26.4,63.7l11.4-27.5l27.5,11.4L124.6,90.1z M90,18.9c19.1,0,34.5,15.5,34.5,34.6C124.5,72.5,109.1,88,90,88c-19.1,0-34.5-15.5-34.5-34.6C55.5,34.4,70.9,18.9,90,18.9z"/></svg>
                                </div>
                                <div class="content">
                                    <h2 style="color: aliceblue;">Fourth</h2>
                                    <h3 style="color: aliceblue;" id="recommend4" runat="server"></h3>
                                    <span id="recommend4_1" runat="server"></span>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fh5co-project animate-box text-center" data-animate-effect="fadeIn">
                            <a href="#" onclick="getElementById('send_something').value=$('#recommend5').text();document.getElementById('sendthing').click();">
                                <div class="image">
                                    <svg id="place-5" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 180" enable-background="new 0 0 180 180" xml:space="preserve"><path fill="#a2ed56" d="M124.6,90.1l4.2-0.3l0.1-4.3l4.2-0.9l-0.5-4.3l4.1-1.4l-1-4.2l3.9-1.9l-1.5-4l3.6-2.3l-2-3.8l3.3-2.8l-2.5-3.5l2.9-3.2l-2.9-3.2l2.5-3.5l-3.3-2.8l2-3.8l-3.6-2.4l1.5-4l-3.9-1.9l1-4.2l-4.1-1.4l0.5-4.3l-4.2-0.9l-0.1-4.3l-4.3-0.3l-0.6-4.3l-4.3,0.2l-1.1-4.2L114.4,9l-1.6-4l-4.1,1.3l-2.1-3.7l-3.9,1.8L100,0.8l-3.7,2.3l-3-3.1L90,2.7L86.7,0l-3,3.1L80,0.8l-2.6,3.4l-3.9-1.8l-2.1,3.7L67.3,5l-1.6,4l-4.2-0.8l-1.1,4.2L56,12.1l-0.6,4.3l-4.3,0.3L51.1,21l-4.2,0.9l0.5,4.3l-4.1,1.4l1,4.2l-3.9,1.9l1.5,4l-3.6,2.3l2,3.8l-3.3,2.8l2.5,3.5l-2.9,3.2l2.9,3.2l-2.5,3.5l3.3,2.8l-2,3.8l3.6,2.4l-1.5,4l3.9,1.9l-1,4.2l4.1,1.4l-0.5,4.3l4.2,0.9l0.1,4.3l4.3,0.3l-30.6,73.9l27.5-11.4L63.6,180L90,116.3l26.4,63.7l11.4-27.5l27.5,11.4L124.6,90.1z M90,18.9c19.1,0,34.5,15.5,34.5,34.6C124.5,72.5,109.1,88,90,88c-19.1,0-34.5-15.5-34.5-34.6C55.5,34.4,70.9,18.9,90,18.9z"/></svg>
                                </div>
                                <div class="content">
                                    <h2 style="color: aliceblue;">Fifth</h2>
                                    <h3 style="color: aliceblue;" id="recommend5" runat="server"></h3>
                                    <span id="recommend5_1" runat="server"></span>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fh5co-project animate-box text-center" data-animate-effect="fadeIn">
                            <a href="#" onclick="getElementById('send_something').value=$('#recommend6').text();document.getElementById('sendthing').click();">
                                <div class="image">
                                    <svg id="place-6" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 180" enable-background="new 0 0 180 180" xml:space="preserve"><path fill="#e25ae0" d="M124.6,90.1l4.2-0.3l0.1-4.3l4.2-0.9l-0.5-4.3l4.1-1.4l-1-4.2l3.9-1.9l-1.5-4l3.6-2.3l-2-3.8l3.3-2.8l-2.5-3.5l2.9-3.2l-2.9-3.2l2.5-3.5l-3.3-2.8l2-3.8l-3.6-2.4l1.5-4l-3.9-1.9l1-4.2l-4.1-1.4l0.5-4.3l-4.2-0.9l-0.1-4.3l-4.3-0.3l-0.6-4.3l-4.3,0.2l-1.1-4.2L114.4,9l-1.6-4l-4.1,1.3l-2.1-3.7l-3.9,1.8L100,0.8l-3.7,2.3l-3-3.1L90,2.7L86.7,0l-3,3.1L80,0.8l-2.6,3.4l-3.9-1.8l-2.1,3.7L67.3,5l-1.6,4l-4.2-0.8l-1.1,4.2L56,12.1l-0.6,4.3l-4.3,0.3L51.1,21l-4.2,0.9l0.5,4.3l-4.1,1.4l1,4.2l-3.9,1.9l1.5,4l-3.6,2.3l2,3.8l-3.3,2.8l2.5,3.5l-2.9,3.2l2.9,3.2l-2.5,3.5l3.3,2.8l-2,3.8l3.6,2.4l-1.5,4l3.9,1.9l-1,4.2l4.1,1.4l-0.5,4.3l4.2,0.9l0.1,4.3l4.3,0.3l-30.6,73.9l27.5-11.4L63.6,180L90,116.3l26.4,63.7l11.4-27.5l27.5,11.4L124.6,90.1z M90,18.9c19.1,0,34.5,15.5,34.5,34.6C124.5,72.5,109.1,88,90,88c-19.1,0-34.5-15.5-34.5-34.6C55.5,34.4,70.9,18.9,90,18.9z"/></svg>
                                </div>
                                <div class="content">
                                    <h2 style="color: aliceblue;">Sixth</h2>
                                    <h3 style="color: aliceblue;" id="recommend6" runat="server"></h3>
                                    <span id="recommend6_1" runat="server"></span>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="fh5co-project animate-box text-center" data-animate-effect="fadeIn">
                            <a href="#" onclick="getElementById('send_something').value=$('#recommend7').text();document.getElementById('sendthing').click();">
                                <div class="image">
                                    <svg id="place-7" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 180 180" enable-background="new 0 0 180 180" xml:space="preserve"><path fill="#9549c1" d="M124.6,90.1l4.2-0.3l0.1-4.3l4.2-0.9l-0.5-4.3l4.1-1.4l-1-4.2l3.9-1.9l-1.5-4l3.6-2.3l-2-3.8l3.3-2.8l-2.5-3.5l2.9-3.2l-2.9-3.2l2.5-3.5l-3.3-2.8l2-3.8l-3.6-2.4l1.5-4l-3.9-1.9l1-4.2l-4.1-1.4l0.5-4.3l-4.2-0.9l-0.1-4.3l-4.3-0.3l-0.6-4.3l-4.3,0.2l-1.1-4.2L114.4,9l-1.6-4l-4.1,1.3l-2.1-3.7l-3.9,1.8L100,0.8l-3.7,2.3l-3-3.1L90,2.7L86.7,0l-3,3.1L80,0.8l-2.6,3.4l-3.9-1.8l-2.1,3.7L67.3,5l-1.6,4l-4.2-0.8l-1.1,4.2L56,12.1l-0.6,4.3l-4.3,0.3L51.1,21l-4.2,0.9l0.5,4.3l-4.1,1.4l1,4.2l-3.9,1.9l1.5,4l-3.6,2.3l2,3.8l-3.3,2.8l2.5,3.5l-2.9,3.2l2.9,3.2l-2.5,3.5l3.3,2.8l-2,3.8l3.6,2.4l-1.5,4l3.9,1.9l-1,4.2l4.1,1.4l-0.5,4.3l4.2,0.9l0.1,4.3l4.3,0.3l-30.6,73.9l27.5-11.4L63.6,180L90,116.3l26.4,63.7l11.4-27.5l27.5,11.4L124.6,90.1z M90,18.9c19.1,0,34.5,15.5,34.5,34.6C124.5,72.5,109.1,88,90,88c-19.1,0-34.5-15.5-34.5-34.6C55.5,34.4,70.9,18.9,90,18.9z"/></svg>
                                </div>
                                <div class="content">
                                    <h2 style="color: aliceblue;">Seventh</h2>
                                    <h3 style="color: aliceblue;" id="recommend7" runat="server"></h3>
                                    <span id="recommend7_1" runat="server"></span>
                                </div>
                            </a>
                        </div>
                    </li>
                </ol>
            </div>
        </div>

        <div class="row copyright">
            <div class="col-md-12 text-center">
                <p>
                    <br />
                    <small class="block">&copy; 南臺科技大學 資訊工程系 智慧型系統實驗室<br/>
                    </small>
                    <small class="block">&copy; 指導教授：Shu-Chen Cheng (鄭淑真) 教授<br/>
                        </small>
                    <small class="block">&copy; 電子郵件：kittyc@stust.edu.tw<br/>
                        </small>
                    <small class="block">&copy; 製作: 111級資工系學生 : 梁博皓、顏子翔、尤品淇<br/>
                    </small>
                        
                   <small class="block">推薦學習網址：<a href="http://ilearning.csie.stust.edu.tw/" target="_blank">智慧型系統實驗室ilab</a></small>
                </p>
                    <p>
                        <a href="https://ilearning.csie.stust.edu.tw/Grammar/test_upload/Independent_Study.apk" target="_blank"><img src="./images/download.png" alt="" style="height: 60px;" /></a>
                    &nbsp
                        <img src="./images/QRcode.png" alt="" style="height: 80px;"/>
                    </p>
                <ul class="fh5co-social-icons" style="margin-bottom:55px">
                    <li><a href="https://www.facebook.com/kitty.cheng.9406"><i class="icon-facebook"></i></a></li>
                    <li><a href="https://csie.stust.edu.tw/"><i class="icon-linkedin"></i></a></li>
                    <li><a href="http://ilearning.csie.stust.edu.tw/"><i class="icon-dribbble"></i></a></li>
                </ul>
            </div>
        </div>

    </div>

    <div class="action" onclick="actionToggle();">
        <span>+</span>
        <ul>
            <li> 
                <a href="#fh5co-started"><i class="fa fa-star star-icon" aria-hidden="true"></i>熱門文法關鍵字</a>
            </li>
        </ul>
    </div>

    <div class="gototop js-top">
        <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
    </div>

     <div class="floating-chat">
        <!-- img src="https://ilearning.csie.stust.edu.tw/kitty/image/kitty.jpg" width="150px" border-radius: 50%; -->
        
        <i class="fa fa-comments-o fa-3x" aria-hidden="true"></i>
        <div class="chat">
            <div class="header">
                <span class="title">英文文法小幫手 - 卡卡喵</span>
                <button>
                    <i class="fa fa-times" aria-hidden="true"></i>
                </button>

            </div>
            <ul class="messages">
                <li class="bot">你好！歡迎來到文法快e通 ~ 
                    <br>今天想做什麼呢喵？</li>
                <li class="bot">若需要搜尋但不知道用法如何使用的話，請輸入："不可數名詞使用方式為何？"
                    <br>即可進行搜索喔！</li>
                <li class="bot">詢問方式採用中文對話，而日常對話默認採用英文回覆喔！卡卡喵可以幫助你培養良好的英文日常對話能力 ~
                    <br> 若想切換日常對話語言請使用下列兩種方式輸入： 
                    <br> 1. 切換中文對話 
                    <br> 2. 切換英文對話</li>
            </ul>
            <div class="textarea">
                <div class="text-box" contenteditable="true" onkeydown="if(event.keyCode==13){return false;}"></div>
                <button id="send-message" style="font-size: 30px;">></button>
            </div>
        </div>
    </div>
    <div id="ipip">
        
    </div>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="js/jquery.waypoints.min.js"></script>
    <!-- Main -->
    <script src="js/main.js"></script>

    <!--結巴斷詞引用github-->
    <!-- <script src="https://pulipulichen.github.io/jieba-js/require-jieba-js.js"></script>-->

    <script type="text/javascript" src="Bot.js"></script>
    <script type="text/javascript" src="ajax_send.js"></script>
    <script type="text/javascript">
        $("input[name=Keywords]").keyup(function (event) {
            if (event.keyCode === 13) {     //按下enter搜尋
                $("#sendthing").click();
            }
        });
    </script>
</body>
</html>

