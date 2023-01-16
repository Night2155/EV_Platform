<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Related_Websites.aspx.cs" Inherits="Grammar.Related_Websites" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="icon" href="./images/Book_icon.gif">
    <title>文法快e通</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="強大的文法搜尋引擎，隨心所欲搜索你想搜索的英文文法教學。" />
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

</head>
<body>

    <div class="fh5co-loader"></div>

    <div id="page">

        <nav class="fh5co-nav" role="navigation">
            <div class="container">
                <div class="row">
                    <div class="col-xs-4 text-left">
                        <a href="#" style="padding:0">
                            <div class="container_2" id="fh5co-logo">
                                <section class="name"><span class="letter letter--0">文</span><span class="letter letter--1">法</span><span class="letter letter--2">快</span><span class="letter letter--3">E</span><span class="letter letter--4">通</span></section>
                                <section class="surname"><span class="letter letter--0">G</span><span class="letter letter--1">r</span><span class="letter letter--2">a</span><span class="letter letter--3">m</span><span class="letter letter--4">m</span><span class="letter letter--5">a</span><span class="letter letter--6">r</span></section>
                            </div>
                        </a>
                    </div>

                    <div class="right-menu menu-1">
                        <ul>
                            <li><a href="Default.aspx"><nobr>搜索資源</nobr></a></li>
                            <li><a href="#"><nobr>相關網站</nobr></a></li>
                            <li><a href="Wonderful_Professor.aspx"><nobr>相關介紹</nobr></a></li>
                            <li><a href="https://ilearning.csie.stust.edu.tw/index/" target="_blank"><nobr>關於iLab</nobr></a></li>
                 
                        </ul>
                    </div>

                </div>

            </div>
        </nav>

        <header id="fh5co-header" class="fh5co-cover" role="banner" style="height:340px;">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 text-center">
                        <div class="display-t" style="height:360px;">
                            <div class="display-tc animate-box" data-animate-effect="fadeIn" style="height:420px;">
                                <br><br>
                                <h1 style="font-size:40px ; user-select: none;" >Websites To Learn English</h1>
                                <br>
                                <h2 style="user-select: none;">Pursue breakthroughs in your life.</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <div id="fh5co-services" class="fh5co-bg-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/1.jpg" alt="BBC Learning English">
                            <div class="card_container">
                                <h2><b>BBC</b></h2> 
                                <p>利用英文掌握全球時事主題多元化，培養單字詞彙、文法、發音、聽力、會話和閱讀能力等等，
                                同時也提供學習測驗，檢視學習成效。如果你想練習進階聽力，那麼 BBC Radio iPlay 廣播電台絕對是你的好選擇！</p> 
                            </div>
                            <a href="https://www.bbc.co.uk/learningenglish/" class="btn btn-success" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/2.jpg" alt="ELLLO Learn English">
                            <div class="card_container">
                                <h2><b>ELLLO</b></h2> 
                                <p>生活化的英文聽力練習教材，有各地口語發音與上千種教材，
                                按難易度分為初級、中級、進階，附有逐字稿、單字解說、測驗題，共有七種不同的練習方式。
                                若你正在準備托福、多益或雅思，那你絕對不能錯過這個網站的「News Center」學習單元，幫助你的英文測驗能力再加分！</p> 
                            </div>
                            <a href="https://www.elllo.org/" class="btn btn-danger" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/3.jpg" alt="Voicetube">
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
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/4.jpg" alt="TuneIn Radio">
                            <div class="card_container">
                                <h2><b>TuneIn Radio</b></h2> 
                                <p>TuneIn 匯集來自世界各地的現場體育賽事、音樂、新聞和廣播節目等等，在訓練英文聽力的同時，
                                    也能了解到各種各地的新知識。想要了解國外的時事與流行又想要練習外語聽力的話，TuneIn Radio 會是你最好的選擇！</p> 
                            </div>
                            <a href="https://tunein.com/" class="btn btn-warning" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/5.jpg" alt="Glossika 語言學習工具">
                            <div class="card_container">
                                <h2><b>Glossika</b></h2> 
                                <p>Glossika 平台上提供超過 7000 句的英文句子以及「完整模式」及「純聽模式」，
                                    前者聽說讀寫練習一次到位，後者則是無論何時何地都能戴上耳機沉浸式學習。
                                    發音方面也分為英式與美式，且系統會依照你的語言程度，由淺入深的提供給你合適的練習內容，幫助你提升英文聽力能力！
                                </p>
                            </div>
                            <a href="https://ai.glossika.com/home" class="btn btn-success" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/6.jpg" alt="Purdue Writing Lab">
                            <div class="card_container">
                                <h2><b>Purdue Writing Lab</b></h2> 
                                <p>Purdue Writing Lab 是實用的寫作網站去精進英文寫作能力，
                                    提供講義自行列印，內容包含寫作方法、文法講解、標點、拼字及常犯錯誤測驗。
                                    由 Purdue OWL 美國普渡大學線上寫作實驗室 致力於收集、共享幫助想改善英文寫作的學習者。
                                    不論是一般的寫作、論文以及教學需要，都能在這裡找到很棒的建議與資源！
                                </p> 
                            </div>
                            <a href="https://owl.purdue.edu/" class="btn btn-danger" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/7.jpg" alt="Quizlet">
                            <div class="card_container">
                                <h2><b>Quizlet</b></h2> 
                                <p>Quizlet 能讓你以最輕鬆的方式透過免費學習集、單字卡、學習模式或小遊戲等等來進行學習、練習並掌握所學內容。
                                    建立你自己的單詞卡，或在其他學習者建立的上億個學習集中選擇複習，
                                    現在不僅有網頁版也可透過 ios 與安卓下載 APP 進行隨時隨地學習。
                                </p> 
                            </div>
                            <a href="https://quizlet.com/zh-tw" class="btn btn-danger" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/8.jpg" alt="English Grammar 101">
                            <div class="card_container">
                                <h2><b>English Grammar 101</b></h2> 
                                <p>通過 Online Grammar Lessons 去了解有關英文的更多知識並提高寫作水平，
                                    從站內任何一個區域中進行選擇就可以開始一項引人入勝且易於遵循的練習！
                                </p> 
                            </div>
                            <a href="https://www.englishgrammar101.com/" class="btn btn-warning" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/9.jpg" alt="The Phrase Finder">
                            <div class="card_container">
                                <h2><b>The Phrase Finder</b></h2> 
                                <p>The Phrase Finder 片語依據字母進行，解釋片語、成語的涵意以及來源，來源的介紹多涉及文化背景，
                                    及片語在當代如何被使用，可以藉由此網站豐富你的文法學習知識！
                                </p>
                            </div>
                            <a href="https://www.phrases.org.uk/" class="btn btn-success" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/10.jpg" alt="TED">
                            <div class="card_container">
                                <h2><b>TED</b></h2> 
                                <p>TED 演講網站，上面有超過兩千部橫跨不同領域的專業人士發表的演講。
                                    其中有許多演講的內容其實都非常淺顯易懂，演講者都會透過大家較能理解的方式在時間內講解自己專業領域內的知識，
                                    每部影片都有逐字稿可以對照，甚至還有英文字幕可以搭配，讓你在練習英文聽力的同時也能吸收到不同的知識。</p> 
                            </div>
                            <a href="https://www.ted.com/" class="btn btn-success" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/11.jpg" alt="NPR">
                            <div class="card_container">
                                <h2><b>NPR</b></h2> 
                                <p>大部份文章都有聲音檔的國外新聞網站，涉及多方面向程度偏高。
                                    可藉此鍛鍊自己的聽力層面，另一方面也可關心國際化時事，想提升自己修行？看 NPR 是你最優質的選擇之一！
                                </p> 
                            </div>
                            <a href="https://www.npr.org/" class="btn btn-danger" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="feature-center animate-box card" data-animate-effect="fadeIn">
                            <img src="./images/12.jpg" alt="EnglishClub">
                            <div class="card_container">
                                <h2><b>EnglishClub</b></h2> 
                                <p>為學習者提供了許多英文單詞和短語、文法參考，其中很多都帶有例句、解釋和測驗，多加瀏覽可大幅增進對文法的知識。
                                    另外還有其他發音課程、聽說讀寫技巧以及以簡單的英語聆聽簡短的音頻講述故事主題，還參雜了各式英文資源，是自我學習的好選擇。
                                </p> 
                            </div>
                            <a href="https://www.englishclub.com/vocabulary/reference.htm" class="btn btn-warning" target="_blank">Goto Learn English</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

       <div class="row copyright">
            <div class="col-md-12 text-center">
                <p>
                    <br />
                    <!--<small class="block">&copy; 南臺科技大學 資訊工程系 智慧型系統實驗室<br/>
                    </small>
                    <small class="block">&copy; 網站管理員：Shu-Chen Cheng (鄭淑真) 教授<br/>
                    </small>-->
                    <small class="block">&copy; 指導教授：Shu-Chen Cheng (鄭淑真) 教授<br/>
                        </small>
                    <small class="block">&copy; 電子郵件：kittyc@stust.edu.tw<br/>
                        </small>
                    <small class="block">&copy; 製作: 111級資工系學生 : 梁博皓、顏子翔、尤品淇<br/>
                    </small>
                        
                   <!--<small class="block">推薦學習網址：<a href="http://ilearning.csie.stust.edu.tw/" target="_blank">智慧型系統實驗室ilab</a></small>-->
                </p>
                <ul class="fh5co-social-icons" style="margin-bottom:55px">
                    <li><a href="https://www.facebook.com/kitty.cheng.9406"><i class="icon-facebook"></i></a></li>
                    <li><a href="https://csie.stust.edu.tw/"><i class="icon-linkedin"></i></a></li>
                    <li><a href="http://ilearning.csie.stust.edu.tw/"><i class="icon-dribbble"></i></a></li>
                </ul>
            </div>
        </div>

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

</body>
</html>