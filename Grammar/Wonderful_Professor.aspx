<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wonderful_Professor.aspx.cs" Inherits="Grammar.Wonderful_Professor" %>

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
    <link rel="stylesheet" href="css2.0/style2.css">

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
                            <div class="container_" id="fh5co-logo">
                                <section class="name"><span class="letter letter--0">文</span><span class="letter letter--1">法</span><span class="letter letter--2">快</span><span class="letter letter--3">E</span><span class="letter letter--4">通</span></section>
                                <section class="surname"><span class="letter letter--0">G</span><span class="letter letter--1">r</span><span class="letter letter--2">a</span><span class="letter letter--3">m</span><span class="letter letter--4">m</span><span class="letter letter--5">a</span><span class="letter letter--6">r</span></section>
                            </div>
                        </a>
                    </div>

                    <div class="right-menu menu-1">
                        <ul>
                            <li><a href="Default.aspx"><nobr>搜索資源</nobr></a></li>
                            <li><a href="Related_Websites.aspx"><nobr>相關網站</nobr></a></li>
                            <li><a href="#"><nobr>相關介紹</nobr></a></li>
                            <li><a href="https://ilearning.csie.stust.edu.tw/index/" target="_blank"><nobr>關於iLab</nobr></a></li>
                   
                        </ul>
                    </div>

                </div>

            </div>
        </nav>

        <header id="fh5co-header" class="fh5co-cover" role="banner" style="height:200px;">
            <div class="overlay"></div>
        </header>

	    <div class="about" id="about">
		    <div class="container">
			    <div class="col-md-4 about-left ">
				    <img src="https://ilearning.csie.stust.edu.tw/Kitty/image/kitty.jpg" class="img-responsive" alt="">
			    </div>
			    <div class="col-md-8 about-right">
				    <div class="about-me">
					    <h2>鄭淑真 / Shu-Chen Cheng 博士</h2>
					    <h4>南臺科技大學資訊工程系（所）教授</h4>
				    </div>
				    <div class="w3layouts_more-buttn">
                        <h4>專長及研究領域</h4>
					    <blockquote><p>人工智慧、機器學習、巨量資料分析、資料探勘、文件探勘、電腦輔助教學、影像處理、模糊理論</p></blockquote>
					    <div class="buttn-about">
						    <a href="https://ilearning.csie.stust.edu.tw/Kitty/" target="_blank">Read More</a>
                            <a id="FB" href="https://www.facebook.com/kitty.cheng.9406" target="_blank">Facebook</a>
					    </div>
				    </div>				
			    </div>
			    <div class="clearfix"> </div>
			    <div class="my-ser-info">
				    <div class="col-md-5 my-datas">
					    <h3>Personal Profile</h3>
					    <ul class="address">
						    <li>
							    <ul class="address-text ">
								    <li><b>Name </b></li>
								    <li>: 鄭淑真 博士</li>
							    </ul>
						    </li>
						    <li>
							    <ul class="address-text ">
								    <li><b>Office </b></li>
								    <li>: C205-3</li>
							    </ul>
						    </li>
						    <li>
							    <ul class="address-text">
								    <li><b>Extension </b></li>
								    <li>: 3228</li>
							    </ul>
						    </li>
						    <li>
							    <ul class="address-text">
								    <li><b>OfficeHour </b></li>
								    <li>: 週三第3~5節、週四第4~6節</li>
							    </ul>
						    </li>
						    <li>
							    <ul class="address-text">
								    <li><b>E-MAIL </b></li>
								    <li><a href="mailto:kittyc@stust.edu.tw">: kittyc@stust.edu.tw</a></li>
							    </ul>
						    </li>
						    <li>
							    <ul class="address-text">
								    <li><b>WEBSITE </b></li>
								    <li><a href="http://ilearning.csie.stust.edu.tw" target="_blank">: 智慧型系統實驗室iLab</a></li>
							    </ul>
						    </li>
						    <li>
							    <ul class="address-text">
                                    <li><b>SCHOOL </b></li>
                                    <li><a href="https://csie.stust.edu.tw/tc/node/Teacher11" target="_blank">: 南臺科技大學資訊工程系（所）</a></li>
							    </ul>
						    </li>
                            <li>
							    <ul class="address-text">
                                    <li><b>YouTube </b></li>
                                    <li><a href="https://www.youtube.com/channel/UCboP_Beeb3gEfFZK5-ZXQiQ/videos" target="_blank">: 個人教學影片</a></li>
							    </ul>
						    </li>
					    </ul> 
				    </div>
				    <div class="col-md-7 aboutmy-services">
					    <div class="col-md-6 col-sm-6 col-xs-6 about-ser-grid">
						    <div class="about-gap">
							    <span class="fa fa-university" aria-hidden="true"></span>
							    <h3>數位教學作品影片</h3>
                                <ul>
                                    <li><a href="https://www.youtube.com/watch?v=zsgkp423Jow" target="_blank">App Inventor Programming教學影片製作團隊介紹</a></li>
                                    <li><a href="https://www.youtube.com/watch?v=DUSRWekb_Vo" target="_blank">App Inventor：Unit 1-1</a></li>
                                    <li><a href="https://www.youtube.com/watch?v=aa2aJvWMuT4" target="_blank">App Inventor：Unit 1-2</a></li>
                                    <li><a href="https://www.youtube.com/watch?v=6Aew-8hshq4" target="_blank">App Inventor：Unit 2-1</a></li>
                                    <li><a href="https://www.youtube.com/watch?v=eGhh9vwZQuk" target="_blank">App Inventor：Unit 2-2</a></li>
                                    <li><a href="https://www.youtube.com/channel/UCboP_Beeb3gEfFZK5-ZXQiQ/videos" target="_blank">More >>></a></li>
							    </ul>
						    </div>
						    <div class="clearfix"> </div>
					    </div>
					    <div class="col-md-6 col-sm-6 col-xs-6 about-ser-grid">
						    <div class="about-gap clr-one">
							    <span class="fa fa-video-camera" aria-hidden="true"></span>
							    <h3>實驗室相關作品影片</h3>
							    <ul>
                                    <li><a href="https://www.youtube.com/watch?v=p8QZ54946u8" target="_blank">植物小學堂</a></li>
                                    <li><a href="https://www.youtube.com/watch?v=rG6J1hmkRZY&feature=youtu.be" target="_blank">資訊教育之文章檢索平台demo影片</a></li>
                                    <li><a href="https://www.youtube.com/watch?v=icEBEVMGh5M&feature=youtu.be" target="_blank">腦波與專注力平台demo影片</a></li>
                                    <li><a href="https://www.youtube.com/watch?v=MTYn8itihKA&feature=youtu.be" target="_blank">英文學習平台demo</a></li>
                                    <li><a href="https://www.youtube.com/watch?v=5Gm1p3baF1w&feature=youtu.be" target="_blank">演算法平台demo</a></li>
                                    <li><a href="https://www.youtube.com/watch?v=vrSYM3j1sVk&feature=youtu.be" target="_blank">微積分適性化測驗平台demo</a></li>
							    </ul>
						    </div>
						    <div class="clearfix"> </div>
					    </div>
					    <div class="col-md-12 col-sm-12 col-xs-12 about-ser-grid">
						    <div class="about-gap clr-two">
							    <span class="fa fa-newspaper-o" aria-hidden="true"></span>
							    <h3>媒體報導</h3>
							    <ul>
                                    <li><a href="https://youtu.be/otoHpXaJ7Ro" target="_blank">臺南市109年度SUPER教師獎首獎大專組--南臺科技大學鄭淑真老師</a></li>
                                    <li><a href="https://news.ltn.com.tw/news/life/breakingnews/3120373" target="_blank">南市SUPER教師獎公布 5師創新教學獲首獎</a></li>
                                    <li><a href="https://udn.com/news/story/6898/4462386" target="_blank">台南SUPER教師 教學帶學生動手做</a></li>
                                    <li><a href="https://www.cdns.com.tw/articles/55080" target="_blank">南市推廣弱勢學童免費課程協會 幫助孩子樂愛樂美麗</a></li>
							    </ul>
						    </div>
						    <div class="clearfix"> </div>
					    </div>
				    </div>	
				    <div class="clearfix"> </div>
			    </div>
			    <div class="clearfix"> </div>
		    </div>
	    </div>
        
        <div class="Academic_research" id="Academic_research">
            <span id="tab-1"></span>
            <span id="tab-2"></span>
            <span id="tab-3"></span>
            <span id="tab-4"></span>
            <span id="tab-5"></span>

            <div id="tab">
                <ul>
                    <li><a href="#tab-1">個人著作</a></li>
                    <li><a href="#tab-2">個人獎項與服務</a></li>
                    <li><a href="#tab-3">指導學生表現</a></li>
                    <li><a href="#tab-4">計劃清單</a></li>
                    <li><a href="#tab-5">學生指導</a></li>
                </ul>

                <div class="tab-content-1">
                    <h4><b>個人著作</b></h4>
                    <ol>
                        <li>鄭淑真、黃振傑，“以雙層次測驗搭配鷹架理論探討學習成效－以演算法課程為例”， 南臺學報工程科學類，第5卷第1期，2020</li>
                        <li>Huang, Y. M., Cheng, Y. P., Cheng, S. C., & Chen, Y. Y. (2020). Exploring the Correlation Between Attention and Cognitive Load Through Association Rule Mining by Using a Brainwave Sensing Headband. IEEE Access, 8, 38880-38891.</li>
                        <li>Shu-Chen Cheng, Guo-Zhi Gu, “Keyword Extraction Based on TF-IDF for TED Talks”, Proceedings of The 18th International Symposium on Advanced Technology (ISAT 2019), 2019</li>
                        <li>Shu-Chen Cheng, “Establish Internet Article Retrieval and Intelligent Information Recommendation System for Computer Education”, Computational Thinking and STEM Forum, 2019.</li>
                        <li>鄭育評、鄭淑真、黃悅民、林佩璇，“設計一款創客教育知識共享平台以實現STEAM教育”，第八屆工程、技術與科技教育學術研討會，2019年5月。</li>
                        <li>鄭淑真、翁裕翔、張勝麟，“以學習歷程自動調整學習者能力及試題難易度”，第十四屆台灣數位學習發展研討會(TWELF 2019)，2019年3月。</li>
                        <li>Shu-Chen Cheng and Chun-An Lu, “Retrieving Articles and Image Labeling Based on Relevance of Keywords”, Proceedings of the International Conference on Machine Learning and Cybernetics (ICMLC) 2019. (EI) </li>
                        <li>Shu-Chen Cheng and Shing-Lin Chang, “An Innovative Assessment Method to Establish Employability Map Based on Students’ Learning Portfolio”, Problems of Education in the 21st Century, Vol. 77, No. 1, pp. 209–227, 2019. (SCIE) </li>
                        <li>Shu-Chen Cheng and Yu-Ping Cheng, “An Adaptive Approach to Quantify Plant Features by Using Association Rule-Based Similarity”, IEEE Access, Vol 7, pp. 32197-32205, 2019. (SCI) Rank: 23/155, Impact factor: 4.098</li>
                        <li>鄭淑真、盧俊安，“以關聯規則分析試題進行難易度預測之提示系統”，第二十三屆人工智慧與應用研討會(TAAI 2018) ，2018年11月。</li>
                        <li>Shu-Chen Cheng, Tzu-En Hsu, and Chun-An Lu, “To Build a Content-based Video Search Platform Using Association Rule”, Proceedings of 2018 International Symposium on Novel and Sustainable Technology, 2018. (poster論文一等獎) </li>
                        <li>Shu-Chen Cheng, Yu-Ping Cheng, Chien-Hao Huang, and Yueh-Min Huang, “Exploring the Correlation Between Attention and Cognitive Load of Students When Attending Different Classes”, Lecture Notes in Computer Science, LNCS volume 11003, pp. 205–214, Springer, 2018. (EI) </li>
                        <li>Shu-Chen Cheng, Yu-Ping Cheng, Chien-Hao Huang, and Yueh-Min Huang, “Exploring the Correlation Between Attention and Cognitive Load of Students When Attending Different Classes”, Proceedings of The 1st Innovative Technologies and Learning, 2018. </li>
                        <li>鄭淑真、黃建豪，“以腦波訊號探討不同課程之學習專注力與認知負荷之差異”，第七屆工程與科技教育學術研討會，2018年5月。</li>
                        <li>Shu-Chen Cheng, Yu-Ping Cheng, Yi-Lin Chen, Yueh-Min Huang, “Using Brainwave to Measure and Explore the Correlation between Attention and Cognitive Load”, Workshop Proceedings of the 25th International Conference on Computers in Education (ICCE2017), New Zealand, December 2017. </li>
                        <li>Shu-Chen Cheng, Yu-Ping Cheng, “Using Brainwave to Measure Learning Attention and Discussing Cognitive Load”, Proceedings of The 16th International Symposium on Advanced Technology (ISAT 2017), Japan, October, 2017</li>
                        <li>Shu-Chen Cheng, Cheng-Yi Lin, Yu-Ping Cheng, “Calculating Similar Features To Improve The Accuracy Of Plant Search System”, Proceedings of The 16th International Symposium on Advanced Technology (ISAT 2017), Japan, October, 2017</li>
                        <li>Shu-Chen Cheng, Cheng-Yi Lin, “To Develope an Automatic Plant Watering System and Using NodeMCU for Controling”, Proceedings of the International Symposium on Novel and Sustainable Technology (ISNST 2017), Taiwan, October, 2017（優秀海報論文）</li>
                        <li>鄭淑真、鄭育評、王昱婷、林承億、陳宥伊、王韋力，“利用植物特徵進行探究式學習之教案設計”，第八屆全球華人探究學習創新應用大會(GCCIL)，成都，2017年7月。(教案設計一等獎) </li>
                        <li>鄭淑真、鄭育評、王昱婷、林承億、陳宥伊、王韋力，“利用植物特徵檢索系統之特徵相似度進行探究式學習”，第八屆全球華人探究學習創新應用大會(GCCIL)，成都，2017年7月。(優秀論文一等獎) </li>
                        <li>鄭淑真、鄭育評、黃悅民，“以特徵相似度並利用模糊函數提升植物特徵檢索之正確性”，第二十一屆全球華人計算機教育應用大會(GCCCE)，北京，2017年6月。</li>
                        <li>鄭淑真，“基於學習者之認知負荷改善教學設計”，105學年度推動教師多元升等制度：教學實務報告研討會論文集，PP. 16–30 (ISBN：978-986-5627-31-7) </li>
                        <li>鄭淑真、陳毅霖，“以腦波儀器量測學習不同科目時之專注力並探討其與認知負荷之關聯”，第六屆工程與科技教育學術研討會，2017年5月。
                        <li>Su, Yen-Ning; Kao, Chih-Chien; Hsu, Chia-Cheng; Pan, Lu-Chun; Cheng, Shu-Chen; Huang, Yueh-Min “How does Mozart's music affect children's reading? The evidence from learning anxiety and reading rates with e-books”, Educational Technology and Society. Vol. 20, 101-112. (2017). (SSCI) </li>
                        <li>Shing-Lin Chang, Shu-Chen Cheng, “Computer Adaptive Learning Platform for Calculus”, Lecture Notes in Computer Science, LNCS volume 10108, PP. 153–162, Springer, 2017. (EI) </li>
                        <li>Shu-Chen Cheng, “A Mobile Learning Environment for Plants”, Proceedings of the 15th International Symposium on Advanced Technology (ISAT2015), Taiwan, November 2016. </li>
                        <li>Shing-Lin Chang, Shu-Chen Cheng, “Computer Adaptive Learning Platform for Calculus”, Proceedings of 1st International Symposium on Emerging Technologies for Education (SETE2016), Roma, October 2016. </li>
                        <li>Shu-Chen Cheng, Shing-Lin Chang, “Assessment of the Difficulty of Items in Computer Adaptive Learning Platform for Calculus”, Proceedings of 2016 International Symposium on Novel and Sustainable Technology (ISNST2016), Taiwan, October 2016. </li>
                        <li>鄭淑真、梁景棠、鄭育評，“以腦波儀器測量不同難易度數位教材之專注力差異”，第五屆工程與科技教育學術研討會，2016年5月。</li>
                        <li>張勝麟、鄭淑真，“電腦適性化微積分學習平台”，第二十屆全球華人計算機教育應用大會(GCCCE)， 香港，2016年5月。</li>
                        <li>鄭淑真、劉源蔁，“運用腦波訊號於背誦英語單字之學習專注力研究”，全國計算機會議(NCS2015)，2015年12月。</li>
                        <li>Shu-Chen Cheng, Ching-Tang Liang, Yu-Ping Jheng, “A study of Attention Difference between Traditional and Digital learning Materials Using Brainwave Measuring Devices”, Workshop Proceedings of the 23th International Conference on Computers in Education (ICCE2015), Hangzhou, November 2015. </li>
                        <li>Shu-Chen Cheng, “Applying Adaptive Hybrid Recommendation Technology for Searching Algorithm Learning Articles”, Proceedings of International Forum on Advanced Technologies, Japan, March 2015. </li>
                        <li>Shu-Chen Cheng, Shih-Che Huang, “Applying Adaptive Hybrid Recommendation Technology for Searching Algorithm Learning Articles”, Workshop Proceedings of the 22th International Conference on Computers in Education (ICCE2014), Japan, November 2014. </li>
                        <li>鄭淑真、張景舜，“多媒體動態出題系統於演算法課程之應用”，第十屆台灣數位學習發展研討會(TWELF2014)，2014年10月。</li>
                        <li>鄭淑真、胡家齊，“以社會促進理論為基礎提昇學生在學習平台之使用量”， 2014數位科技與創新管理研討會，2014年6月。</li>
                        <li>鄭淑真、黃詩哲，“應用於適性化混合式推薦技術於演算法文章搜尋系統”，第三屆工程與科技教育學術研討會，2014。</li>
                        <li>鄭淑真、郭岳岷，“科技英文平台學習提醒通知系統”，第十八屆全球華人計算機教育應用大會(GCCCE)， 上海，2014。</li>
                        <li>鄭淑真、羅光男，“以智慧型代理人為基礎之個人化學習平台”，第十八屆全球華人計算機教育應用大會(GCCCE)， 上海，2014。</li>
                        <li>Shu-Chen Cheng, Chien-Ming Shao, “Establishing an Innovative Plant Learning Platform with Expandable Learning Materials Using Wiki Software”, Workshop Proceedings of the 21th International Conference on Computers in Education (ICCE2013), Bali, November 2013. </li>
                        <li>Shu-Chen Cheng and Guan-Yu Chen, “Estimation of Item Difficulty Index Based on Item Response Theory for Computerized Adaptive Testing”, Proceedings of the AECT International Conference on the Frontier in e-Learning Research 2013 (AECT 2013), Taiwan, June 2013. </li>
                        <li>Shu-Chen Cheng, Guan-Yu Chen and I-Chun Pan, “An estimation method of item difficulty index combined with the particle swarm optimization algorithm for the computerized adaptive testing”, Proceedings of the 27th Annual Conference of the Japanese Society for Artificial Intelligence (JSAI 2013), Japan, May 2013. </li>
                        <li>鄭淑真、邵建銘，“使用wiki引擎建立高擴充性的植物知識學習教材”，第九屆台灣數位學習發展研討會(TWELF2013)，2013年11月。</li>
                        <li>鄭淑真、陳冠宇，“自動計算電腦適性化測驗之試題難度指數”，第十七屆全球華人計算機教育應用大會(GCCCE)， 北京，2013。</li>
                        <li>鄭淑真、鄭宇翔，“探討以艾賓豪斯遺忘曲線理論應用於背誦英文單字的記憶成效”，第二屆工程與科技教育學術研討會，2013年5月。</li>
                        <li>Shu-Chen Cheng, Chung-Kuang Chen, "Application in Social Network English Learning Based on Virtual Cloud Technology Combined with Essential Articles Classification", Journal of Internet Technology, Vol. 13 No. 6, Nov. 2012, pp.989-996. (SCI) </li>
                        <li>鄭淑真、潘逸峻、鄭宇翔，“以粒子群最佳化演算法建置適性測驗系統”， 科技與工程教育學刊，第45卷第2期，2012年4月，p. 21-34</li>
                        <li>鄭淑真、林昱志、潘逸峻，“探討粒子群最佳化之適性化測驗動態選題之試卷品質”， 第十七屆人工智慧與應用研討會(TAAI 2012) ，2012年11月。</li>
                        <li>鄭淑真、郭豐榮，“結合視覺化教材與文章推薦系統實現於演算法課程”，第八屆台灣數位學習發展研討會(TWELF2012)，2012年10月。</li>
                        <li>Shu-Chen Cheng, I-Chun Pen & Yu-Chih Lin, “Evaluation for the Test Quality of Dynamic Question Generation by Particle Swarm Optimization for Adaptive Testing”, Workshop Proceedings of the 20th International Conference on Computers in Education (ICCE2012), Singapore, November 2012. </li>
                        <li>Shu-Chen Cheng, Chung-Kuang Chen, “Implementing Cloud-based Information Retrieval Technology on E-learning Platform for Computer Algorithms Course”, Proceedings of 2012 The 5th Asia-Pacific Conference on Engineering and Technology Education, Oct. 2012. </li>
                        <li>鄭淑真、張鴻德、潘輝銘，“以就業能力指標探討學生就業力與課程規劃”， 南台學報，第37卷第3期，2012年9月，p.75~84</li>
                        <li>鄭淑真、陳重光，“以虛擬化雲端概念結合精華文章分類於電子書英文學習”，第十六屆全球華人計算機教育應用大會(GCCCE), 2012. </li>
                        <li>Chih-Chin Huang, Shu-Chen Cheng and Yueh-Min Huang, “Clustering Segmentation Fractal Interpolation on Nonlinear Curves”, Fractals-Complex Geometry Patterns And Scaling In Nature And Society, Vol. 19, Issue: 2, Jun. 2011, pp. 163-173(SCI) </li>
                        <li>Ching-Ju Chen, Shu-Chen Cheng and Yueh-Min Huang, “The Reconstruction Of Satellite Images Based On Fractal Interpolation”, Fractals-Complex Geometry Patterns And Scaling In Nature And Society, Vol. 19, Issue: 3, Sep. 2011, pp. 347-354(SCI) </li>
                        <li>Shu-Chen Cheng, Hong-De Chang and Hui-Ming Pan, “Employability Assessment by Establishing Employment Competence Index System According to Academic Performance”, Workshop Proceedings of the 19th International Conference on Computers in Education (ICCE2011), November 2011. (ISBN978-616-12-0186-9) </li>
                        <li>黃天麒、王志偉、鄭淑真，“發展以部落格學習為基礎之知識建構模式”，第七屆台灣數位學習發展研討會，2011年11月。</li>
                        <li>鄭淑真、張勝麟、陳冠宇、史天元，“以合作學習為基礎應用於測量實習課程之數位學習平台”，第七屆台灣數位學習發展研討會，2011年11月。</li>
                        <li>Shu-Chen Cheng , Peter T.Y. Shih, Shing-Lin Chang, Guan-Yu Chen, “The Design Of An Interactive E-Learning Platform For Surveying Exercise”, The 32nd Asian Conference on Remote Sensing in Conjunction with ISPRS workshop: E-Learning 2011 within ACRS, Oct. 2011. (ISBN978-986-02-9190-2) </li>
                        <li>鄭淑真、潘逸峻、吳昱德，“探討適性化測驗與遺忘曲線應用於科技英文數位學習平台之學習成效”，第一屆(2011)工程教育學術研討會，2011年5月。（佳作論文獎）</li>
                        <li>鄭淑真、潘逸峻、吳昱德，“分析科技英文課程之學習歷程以探討數位學習成效”， 南台學報，第36卷第1期，2011年4月，p.57-68</li>
                        <li>Yen-Ting Lin, Yueh-Min Huang*, Shu-Chen Cheng, "An automatic group composition system for composing collaborative learning groups using enhanced particle swarm optimization", Computers & Education, Vol. 55, Issue 4, Dec. 2010, pp. 1483-1493 (SSCI) </li>
                        <li>Shu-Chen Cheng, Wu-Yuin Hwang, Sheng-Yi Wu, Rustam Shadiev and Ching-Hwa Xie, "A Mobile Device and Online System with Contextual Familiarity and its Effects on English Learning on Campus", Educational Technology & Society, Vol. 13, Issue: 3, Jul. 2010, pp. 93-109. (SSCI) </li>
                        <li>Yueh-Min Huang, Yen-Ting Lin, Shu-Chen Cheng*, "The effectiveness of a mobile plant learning system in a science curriculum in Taiwanese elementary education", Computers & Education, Vol. 54, Issue 1, Jan. 2010, pp. 47-58. (SSCI) </li>
                        <li>Yong-Ming Huang, Chin-Feng Lai, Chien-Hung Liu, Shu-Chen Cheng, and Yueh-Min Huang. “Designing a wiki-based pedagogy in embedded system education”, Joint International IGIP- SEFI Annual Conference 2010 “Diversity unifies - Diversity in Engineering Education” (IGIP-SEFI 2010), Trnava, Slovakia. </li>
                        <li>Shu-Chen Cheng, Wu-Yuin Hwang, Dun-Wei Wen, Sheng-Yi Wu, Ching-Hua Hsiehe, Chia-Yu Chen, "A Mobile and Web System with Contextual Familiarity and its Effect on Campus English Learning," digitel, pp.222-224, 2010 Third IEEE International Conference on Digital Game and Intelligent Toy Enhanced Learning, 2010. </li>
                        <li>鄭淑真、洪紹祥、陳韻中，“依情緒關鍵字進行旅遊文章分類”， 2010民生電子研討會, 2010（優良論文獎）. </li>
                        <li>Tien-Chi Huang, Shu-Chen Cheng, Yueh-Min Huang, "A blog article recommendation generating mechanism using an SBACPSO algorithm", Expert Systems with Applications, Vol.36 Issue 7, Sep. 2009, pp. 10388-10396, (SCI) </li>
                        <li>Yueh-Min Huang, Yen-Ting Lin, Shu-Chen Cheng, "An Adaptive Testing System for Supporting Versatile Educational Assessment", Computers & Education, Vol. 52, Issue 1, Jan. 2009, pp. 53-67 (SSCI) </li>
                        <li>Shu-Chen Cheng, Yen-Ting Lin, and Yueh-Min Huang, "Dynamic Question Generation System for Web-Based Testing Using Particle Swarm Optimization", Expert Systems With Applications, Vol. 36, Issue 1, Jan. 2009, pp. 616-624 (SSCI). </li>
                        <li>Shu-Chen Cheng, Der-Fang Shiau, Yueh-Min Huang, and Yen-Ting Lin, "Dynamic hard-real-time scheduling using genetic algorithm for multiprocessor task with resource and timing constraints", Expert Systems With Applications, Vol. 36, Issue 1, Jan. 2009, pp. 852-860 (SCI) </li>
                        <li>Shu-Chen Cheng, Ting-Yun Huang, “Constructing A Plant Learning System Based On Web 2.0”, The 17th International Conference on Computers in Education (ICCE 2009), Hong Kong, Dec. 2009. (ISBN-978-986-84735-3-9) </li>
                        <li>Wen-Hsiung Wu, Sheng-Hui Hsu, Shu-Chen Cheng, Tsung-Li Wang, Yueh-Min Huang and Hsi-Chi Hsiao, “An investigation of the different game style influences on a digital game-based supported software engineering course”, 2009 Annual ASEE Global Colloquium on Engineering Education (ASEE2009), Hungary, Oct. 2009. </li>
                        <li>Shu-Chen Cheng, Yu-De Wu , Rong-San Lin , Ting-Yun Huang, “Editing Digital Instructional Materials According to the Virtual Eye Tracker - an Example of Plant Learning”, The Technology Enhanced Learning Conference 2009 (TELearn 2009), Taiwan, Oct. 2009. </li>
                        <li>Yen-Ting Lin, Shu-Chen Cheng, Jin-Tan Yang, and Yueh-Min Huang, "An Automatic Course Generation System for Organizing Existent Learning Objects using Particle Swarm Optimization", International Workshop on the 4th International Conference on E-Learning and Games (Edutainment 2009), Lecture Notes in Computer Science Vol. 5670, p.p.565-570, August 9-11, Canada.(EI) </li>
                        <li>Sheng-Hui Hsu, Shu-Chen Cheng, Yueh-Min Huang, "The Experience of Adopting Game-based Learning in Library Instruction", Edutainment 2009, Lecture Notes in Computer Science Vol. 5670, p.p.571-576, August 9-11, Banff, Canada. (EI) </li>
                        <li>Sheng-Hui Hsu, Po-Han Wu, Shu-Chen Cheng, Yueh-Min Huang, "The Experience of Using Game-based ubiquitous Learning in Elementary School Science Experiment Class", MULE 2009, March 26-27, Japan. </li>
                        <li>Shu-Chen Cheng, Chien-Feng Lai, "OSGi-Based Context-Aware Middleware for Building Intelligent Services in a Smart Home Environment", International Journal On Smart Sensing And Intelligent Systems, Vol. 2, No. 1, March 2009, p.p.135-155.(EI) </li>
                        <li>鄭淑真、黃庭筠，“智慧型植物同儕學習平台”， 第十四屆人工智慧與應用研討會(TAAI 2009), 2009. </li>
                        <li>鄭淑真、陳韻中、黃庭筠，“以web2.0架構建置植物教學平台”，第十三屆全球華人電腦教育應用大會(GCCCE), 2009.（優秀論文）</li>
                        <li>鄭淑真、吳昱德、黃庭筠，“以虛擬眼動儀輔助編輯數位教材內容-以植物學習為例”，第五屆台灣數位學習發展研討會, 2009. </li>
                        <li>鄭淑真、陳韻中，“基於web2.0架構旅遊推薦系統”，2009數位生活科技研討會, 2009. </li>
                        <li>Yueh-Min Huang, Yen-Hung Kuo, Yen-Ting Lin, and Shu-Chen Cheng, "Toward Interactive Mobile Synchronous Learning Environment with Context-awareness Service", Computers & Education, Vol. 51, Issue 3, Nov. 2008, pp. 1205-1226 (SSCI) </li>
                        <li>Tien-Chi Huang, Yueh-Min Huang, and Shu-Chen Cheng, "Automatic and Interactive E-Learning Auxiliary Material Generation Utilizing Particle Swarm Optimization", Expert Systems With Applications, Vol. 35, Issue 4, Nov. 2008, pp. 2113-2122 (SCI). </li>
                        <li>Der-Fang Shiau, Shu-Chen Cheng and Yueh-Min Huang, "Proportionate flexible flow shop scheduling via a hybrid constructive genetic algorithm", Expert Systems with Applications, Vol. 34, Issue 2, February 2008, Pages 1133-1143, 2008. (SCI) </li>
                        <li>Shu-Chen Cheng, Wei-Zhi Tsai, Yun-Zhong Chen, “Information Technology in Rescue Knowledge Learning System”, Proceedings of the First International Symposium on IT in Medicine and Education (ITME2008), December 2008. (EI) </li>
                        <li>Shu-Chen Cheng, Kao-Pin Huang, Yun-Chung Chen, “The Search Engine for Articles and Multimedia in Blogs”, Proceedings of Pacific-Rim Conference on Multimedia (PCM2008), Lecture Notes in Computer Science, Vol. 5353, p.p.758-767, December 2008. (EI) </li>
                        <li>Chih-Hsiung Fu, Kun-Te Wang, Shu-Chen Cheng, Ting-Wei Hou, “Building Video Concordancer Supported English Online Learning Exemplification”, Proceedings of Pacific-Rim Conference on Multimedia (PCM2008), Lecture Notes in Computer Science, Vol. 5353, p.p.731-737, December 2008. (EI) </li>
                        <li>Ching-Ju Chen, Shu-Chen Cheng, Yueh-Min Huang, “Local Fractal Interpolation”, Proceedings of the Asia-Pacific Workshop on Visual Information Processing (VIP2008), December 2008. </li>
                        <li>Hsien-Ming Tsai, Jen-Wen Ding, Shu-Chen Cheng, Yueh-Min Huang, "Providing continuous VCR function with interpolated active buffer management for near VOD system on ubiquitous multimedia environment", The First IEEE International Conference on Ubi-media Computing (U-Media 2008), China, July 2008. (ISBN: 978-1-4244-1865-7)(EI) </li>
                        <li>Shu-Chen Cheng, Wei-Zhi Tsai, Yun-Zhong Chen, “Rescue Knowledge M-learning System by 3G Mobile Phones”, Proceedings of The Fifth IEEE International Conference on Wireless, Mobile and Ubiquitous Technologies in Education (WMUTE2008), pp. 148-152 , March 2008. (ISBN0-7695-3108-3) (EI) </li>
                        <li>鄭淑真、黃高彬、陳韻中，“部落格精華文章自動收錄系統”，第十三屆人工智慧與應用研討會, 2008. </li>
                        <li>鄭淑真、陳韻中、蘇文淵，“智慧型旅遊行程規劃系統”，第十三屆人工智慧與應用研討會, 2008. </li>
                        <li>鄭淑真、蔡煒志、黃天麒、鄭鈺霖、黃悅民，“建構一個行動學習系統-以救護訓練為例”，第三屆行動與無所不在學習研討會, 2008. </li>
                        <li>林彥廷、黃悅民、陳韻中、鄭淑真，“行動植物查詢系統應用於真實學習情境”，第三屆行動與無所不在學習研討會, 2008. </li>
                        <li>Yen-Ting Lin, Yi-Chiun Chi, Lien-Chien Chang, Shu-Chen Cheng, and Yueh-Min Huang, “A Web 2.0 Synchronous Learning Environment using AJAX”, Proceedings of Ninth IEEE International Symposium on Multimedia Workshops 2007 (ISMW2007), pp. 453-458 , December 2007. (ISBN0-7695-3084-2) (EI) </li>
                        <li>Shu-Chen Cheng, Jhen-Jie Jhou, Bing-Hong Liou, “PDA Plant Search System Based on the Characteristics of Leaves Using Fuzzy Function”, Proceedings of The 20th International Conference on Industrial, Engineering & Other Applications of Applied Intelligent Systems (IEA/AIE2007), Lecture Notes in Artificial Intelligence 4570, Springer-Verlag, pp.834-844, 2007. (ISBN978-3-540-73322-5) (EI) </li>
                        <li>Yueh-Min Huang, Juei-Nan Chen, and Shu-Chen Cheng, "A Method of Cross-level Frequent Pattern Mining for Web-based Instruction", Educational Technology & Society, Vol.10, Issue.3, pp. 305-319, 2007. (SSCI) </li>
                        <li>鄭淑真、蔡煒志、陳韻中，“3G手機緊急救護系統”， 第十二屆人工智慧與應用研討會, 2007. </li>
                        <li>鄭淑真、劉炳宏、周振傑，“結合GPS之PDA植物查詢系統”，第十二屆人工智慧與應用研討會, 2007. </li>
                        <li>郭彥宏, 黃悅民, 鄭淑真, "Adopting Efficient Fuzzy Weighted Average Algorithm to Develop a Context-awareness Learning Content Gateway", 2007數位生活科技研討會論文集, 2007. </li>
                        <li>鄭淑真、劉炳宏、周振傑，“行動裝置之植物查詢系統”， 2007年電腦與網路科技在教育上的應用研討會, 2007. </li>
                        <li>鄭淑真、周振傑、劉炳宏，“以模糊函數量化葉片特徵之PDA植物檢索系統”， 第十一屆人工智慧與應用研討會, 2006. </li>
                        <li>鄭淑真、蔡煒志，“3G手機網頁重組系統”， 2006數位教學暨資訊實務研討會, 2006. </li>
                        <li>劉炳宏、張煉謙、郭彥宏、林彥廷、鄭淑真、黃悅民，“互動式即時行動教學系統”， 2006數位教學暨資訊實務研討會, 2006. </li>
                        <li>鄭淑真、周振傑，“使用倒傳遞類神經網路自動分類與管理討論區文章”，第二屆全國數位內容研討會, 2006. </li>
                        <li>劉炳宏、郭彥宏、張煉謙、鄭淑真、黃悅民、蘇志偉，“以SCORM為基礎之行動數位教材編輯工具”，第二屆全國數位內容研討會, 2006. </li>
                        <li>鄭淑真、蘇志偉、郭彥宏、林彥廷、黃悅民，“以行動裝置為基礎的智慧型網頁處理系統”，2006數位生活科技研討會, 2006. </li>
                        <li>Shu-Chen Cheng, Yen-Ting Lin, “Location Aware Mobile Learning with Intelligent Download Suggestions”, Proceedings of 5th International Conference on Web-based Learning (ICWL2006), 2006. </li>
                        <li>Yueh-Min Huang, Yu-Lin Jeng, Shu-Chen Cheng, and Jim-Min Lin, “Integrating UDDI Searching Mechanism into SCORM XML Metadata”, Proceedings of 5th International Conference on Web-based Learning (ICWL2006), 2006. </li>
                        <li>鄭淑真、林彥廷、黃悅民，“以決策樹為基礎之數位學習題庫自動分級系統” 中華民國九十四年全國計算機會議, 2005. </li>
                        <li>鄭淑真, 林彥廷, 黃悅民，“智慧型行動裝置之網路瀏覽下載建議” 第十屆人工智慧與應用研討會, 2005. </li>
                        <li>鄭淑真、林彥廷，“智慧型數位學習測驗系統” 2005數位教學暨資訊實務研討會，2005. </li>
                        <li>鄭淑真、林彥廷、黃悅民，“數位學習題庫難易度自動分級系統” ，第十六屆物件導向技術及應用研討會，2005。</li>
                        <li>Shu-Chen Cheng, Yueh-Min Huang, Juei-Nan Chen, Yen-Ting Lin, “Automatic Leveling System for E-learning Examination Pool Using Entropy-based Decision Tree”, Lecture Notes in Computer Science 3583: Advances in Web-Based Learning, Springer-Verlag, pp.273-278, 2005. (ISBN3-3-540-27895-8) (SCI) </li>
                        <li>Shu-Chen Cheng, Chih-Wei Su, Yen-Ting Lin, “Mobile Learning with Intelligent Download Suggestions”, IEEE Learning Technology Newsletter, Vol.7, Issue 3, pp. 37-41, April 2005. </li>
                        <li>鄭淑真、蘇志偉， “人工智慧於數位行動學習之應用”, 2005數位學習研討會/屏東師院資訊科學應用期刊， 2005。</li>
                        <li>Yueh-Min Huang and Shu-Chen Cheng, “Parallel Medical Image Analysis for Diabetic Diagnosis”, Special Issue on "Applications for High performance Systems", the International Journal of Computer Applications in Technology, Vol. 22, No.1, pp. 34-41,2005.(EI) </li>
                        <li>Shu-Chen Cheng and Yueh-Min Huang, “Dynamic Real-time Scheduling for Multi-Processor Tasks Using Genetic Algorithm”, The 28th Annual International Computer Software and Applications Conference (COMPSAC), September, 2004. </li>
                        <li>Der-Fang Shiau, Shu-Chen Cheng and Yueh-Min Huang, “A Column Generation Approach to Solve Proportionate Flexible Flow Shop for Common Due Date Scheduling”, 2004 International Computer Symposium, 2004. </li>
                        <li>Yueh-Min Huang, Juei-Nan Chen, Shu-Chen Cheng, William C. Chu, “Agent-Based Web Learning System Applying Dynamic Fuzzy Petri Net”, Lecture Notes in Computer Science 3143: Advances in Web-Based Learning, Springer-Verlag, pp.338-345, 2004. (SCI) </li>
                        <li>Shu-Chen Cheng and Yueh-Min Huang, “A Novel Approach to Diagnose Diabetes Based on the Fractal Characteristics of Retinal Images”, IEEE Trans. on Information Technology in Biomedicine, Vol.7, No.3, pp. 163-170, 2003.(SCI) </li>
                        <li>Shu-Chen Cheng and Yueh-Min Huang, “Scheduling Multi-Processor Tasks with Resource and Timing Constraints Using Genetic Algorithm”, The 5th IEEE International Symposium on Computational Intelligence in Robotics and Automation, pp. 624-629, 2003. </li>
                        <li>Shu-Chen Cheng and Yueh-Min Huang, “A Diagnosis System Based on the Fractal Characteristics of Retinal Images of Diabetics”, 2002 International Computer Symposium, Workshop on Multimedia Technologies, 2002. </li>
                        <li>Shu-Chen Cheng and Yueh-Min Huang, “Solving Job-Shop Scheduling Problems Using Genetic Algorithm以基因演算法求解排程問題”, The Seventh Conference on Artificial Intelligence and Applications in August, 2002. </li>
                        <li>Shu-Chen Cheng(鄭淑真) and Yueh-Min Huang (黃悅民), “Automatic Diagnosis System Based on Fractal Characteristic of Diabetic Retinal Image”, 第五屆人工智慧與應用研討會論文集，pp. 183-187, 2000。</li>
                        <li>楊名、鄭淑真，1998，中文化即時動態GPS測量（RTK）軟體著作權。</li>
                        <li>余致義、鄭淑真、曾清涼，“油氣管線空中定位測量技術”，中華地理資訊學會學術研討會論文集，1997。</li>
                    </ol>
                </div>
                <div class="tab-content-2">
                    <h4><b>獎項</b></h4>
                    <ol>
                        <li>獲得臺南市109年度SUPER教師獎首獎</li>
                        <li>獲得107學年度院級教學優良教師甲等獎勵</li>
                        <li>獲得臺南市106年度SUPER教師獎入圍獎</li>
                        <li>獲得106學年度院級教學優良教師甲等獎勵</li>
                        <li>獲得105學年度校級教學優良教師甲等獎勵</li>
                        <li>獲得104學年度校級教學優良教師甲等獎勵</li>
                        <li>獲得103年度台灣工程教育與管理學會學術獎獎勵</li>
                        <li>獲得103學年度校級教學優良教師甲等獎勵</li>
                        <li>獲得102年度國科會獎勵特殊優秀人才獎助</li>
                        <li>獲得102學年度校級教學優良教師甲等獎勵</li>
                        <li>獲得101學年度校級教學優良教師甲等獎勵</li>
                        <li>獲得98學年度校級教學優良教師甲等獎勵</li>
                        <li>獲得97學年度工學院教學優良教師獎勵</li>
                        <li>獲得96學年度服務優良教師獎勵</li>
                    </ol>
                    <h4><b>服務</b></h4>
                    <ol>
                        <li>擔任臺南市推廣弱勢學童免費課程協會理事長 (立案文號：府社團字第1030326885號) (2014年2月~2019年4月)</li>
                        <li>擔任臺南市推廣弱勢學童免費課程協會常務監事 (2019年4月~迄今)</li>
                        <li>擔任臺灣工程教育與管理學會理事 (2014年5月~迄今)</li>
                        <li>擔任多種期刊之審稿以及國內外研討會之議程委員</li>
                        <li>2018年擔任考試院典試委員</li>
                    </ol>
                </div>
                <div class="tab-content-3">
                    <h4><b>指導學生之優秀表現</b></h4>
                    <ol>
                        <li>指導學生參加南台科技大學第八屆專題製作競賽第一名 -- 以基因演算法求解排程問題(學生:盧易群、陳奕帆、陳曉玉)，2005年12月</li>
                        <li>指導學生參加南台科技大學第八屆專題製作競賽佳作 –- 手寫辨識系統 (學生: 李岳恒、廖文源、林俊佑、林俊男)，2005年12月</li>
                        <li>指導碩士班學生林彥廷考取國立成功大學工程科學系資訊組博士班，2006年7月</li>
                        <li>指導學生參加2006年第二屆數位訊號處理創思設計競賽創意系統組第三名 –-綠色行動學習(學生: 劉炳宏、周振傑)，2006年10月</li>
                        <li>指導學生參加2006年第二屆數位訊號處理創思設計競賽國際賽決賽獲得創意獎(Creative Award) –-綠色行動學習(學生: 劉炳宏、周振傑)，2006年11月</li>
                        <li>指導學生參加2006年第二屆數位訊號處理創思設計競賽創意系統組佳作 –-人型即時辨識系統(學生: 吳冠億、黃智鴻、陳冠達、王士豪)，2006年10月</li>
                        <li>指導學生參加2006年第二屆數位訊號處理創思設計競賽創意系統組佳作 –-無障礙輸入系統(學生: 洪偉程、廖柏彥、簡境男)，2006年10月</li>
                        <li>指導學生參加南台科技大學第九屆專題製作競賽佳作 –- 嬰兒監視器 (學生: 吳冠億、黃智鴻、陳冠達、王士豪)，2006年12月</li>
                        <li>指導學生參加2007年第三屆數位訊號處理創思設計競賽創意系統組第一名 –-魔法創意畫筆系統(學生: 林學廷、賴以倫、林柏仲、張柏宏)，2007年10月</li>
                        <li>指導學生參加2007年第三屆數位訊號處理創思設計競賽創意系統組佳作 –- 3G手機緊急救護系統(學生: 蔡煒志、陳韻中)，2007年10月</li>
                        <li>指導學生參加2007年第三屆數位訊號處理創思設計競賽國際賽決賽獲得第二名–-Magic Brush System(學生: 林學廷、賴以倫、林柏仲、張柏宏)，2007年11月</li>
                        <li>指導學生參加南台科技大學第十屆專題製作競賽佳作 –- 虛擬滑鼠 (學生: 廖彬志、馬慧雯、黃盈菁)，2007年12月</li>
                        <li>指導學生參加2008年第四屆數位訊號處理創思設計影音訊號處理系統組第三名 –-即時影像魔術師(學生: 胡景富、林咏漢、黃群凱)，2008年11月</li>
                        <li>指導學生參加2008年第四屆數位訊號處理創思設計影音訊號處理系統組佳作 –-虛擬眼動儀(學生: 林祐民、蔡博宇、陳柏儒、陳智閔)，2008年11月</li>
                        <li>指導學生參加南台科技大學第十一屆專題製作競賽第二名 –- 行動旅遊規劃導覽 (學生: 朱建豪、潘逸峻、吳柏志、張軒瑋)，2008年12月</li>
                        <li>指導學生參加2009年第五屆數位訊號處理創思設計競賽行動裝置平台應用組第一名 –-行動影像智慧王(學生: 林韋廷、蕭郁達、張夢蝶、蕭凱朧)，2009年10月</li>
                        <li>指導學生參加2009年第五屆數位訊號處理創思設計競賽影音訊號處理組第一名 –-影能注目(學生: 林亞駿、黃勁瑋、詹士誼、陳俊谷)，2009年10月</li>
                        <li>指導學生參加2009年第五屆數位訊號處理創思設計競賽國際賽決賽獲得第三名 –-行動影像智慧王(學生: 林韋廷、蕭郁達、張夢蝶、蕭凱朧)，2009年11月</li>
                        <li>指導學生參加2010年第六屆數位訊號處理創思設計競賽行動裝置平台應用組佳作 –-碎形迷宮(學生:江政瑋、胡炳文、王盈文、張景舜)，2010年10月</li>
                        <li>指導學生參加南台科技大學第十三屆專題製作競賽特優 –-唯E卡(學生: 陳柏村、江俊毅、沈詣軒、劉崇德)，2010年11月</li>
                        <li>指導學生參加2011資訊教育與科技應用專題競賽資訊管理類佳作 –-以雲端運算之架構應用於植物辨識系統(學生:洪紹祥、潘逸峻、潘輝銘、謝宏偉)，2011年3月</li>
                        <li>指導學生參加2011第16屆全國大專校院/社會人士資訊服務創新競賽獲得資訊技術應用組第三名–-今天栽了沒(學生: 潘輝銘,吳怡璋,邵建銘,張景舜,林昱志,郭豐榮,陳冠宇)，2011年11月</li>
                        <li>指導學生參加2011電信創新應用大賽行動應用創新遊戲獎季軍–-『栽』在你手上(學生: 潘輝銘、張景舜、邵建銘、吳怡璋、李益昇、劉俊呈、潘逸峻、謝宏偉)，2011年11月</li>
                        <li>指導學生參加南台科技大學第十四屆專題製作競賽第六名 –-台南思Go易(學生: 蘇育正、胡家齊、洪有賢、羅光男)，2011年12月</li>
                        <li>指導學生參加2012全國資訊服務創新競賽獲得資訊技術應用組佳作--植物小學堂(學生: 邵建銘,張景舜,黃詩哲,郭岳岷,簡伯軒,張佑慶,高致函,劉俊呈)，2012年11月</li>
                        <li>指導學生參加2012電信創新應用大賽入選獎--那些年，我們一起救的症頭(學生: 陳冠宇,郭豐榮,林昱志,胡家齊,羅光男,張景舜,張佑慶,簡伯軒)，2012年10月</li>
                        <li>指導學生參加南台科技大學第十五屆專題製作競賽第六名 –-環安衛什麼(學生: 簡伯軒、張景舜、高致函、張祐慶)，2012年12月</li>
                        <li>指導學生參加2013校園瘋雲榜App創意競賽第一名--植物小學堂(學生: 陳彥齊，邵建銘，張景舜，陳玟蓁)，2013年11月</li>
                        <li>指導學生參加2013校園瘋雲榜App創意競賽第三名--愛的急救小冊冊(學生: 高守謙，謝瑋倫，李昆霖，羅光男)，2013年11月</li>
                        <li>指導學生參加南台科技大學第十六屆專題製作競賽特優 –-媽媽咪呀(學生: 陳君豪、林杰樑、郭志軒、張仕杰)，2013年12月</li>
                        <li>指導學生參加南台科技大學第十六屆專題製作競賽第六名 –-意外別來(學生: 高瑋慈、蔡明維、盧憶樺、黃朝瑋)，2013年12月</li>
                        <li>指導學生參加2014 Hami Apps軟體開發暨供應商大賞獲得最佳旅遊APP優選獎--走馬看花 (學生: 高瑋慈、張景舜、梁景棠、周昕儀、陳冠潔、趙令婷、藍偉瑞、和黃峻維)，2014年9月</li>
                        <li>指導學生參加南台科技大學第十七屆專題製作競賽第二名 –-自己英文自己救(學生: 藍偉瑞、陳仕瑋、徐俊彥、胡詠凱)，2014年12月</li>
                        <li>指導學生參加2014 全國大專院校物聯網與行動APP整合創新應用競賽獲得銅獎--植來植往(學生: 高瑋慈、周昕儀、陳冠潔、趙令婷)，2014年12月</li>
                        <li>指導學生陳冠宇碩論「以答題異常率估計試題參數結合粒子群最佳演算法之動態選題策略於電腦適性化測驗」獲得103年度台灣工程教育與管理學會優秀碩士論文獎，2014年10月</li>
                        <li>指導學生參加2015全國校園雲端創新應用大賽競賽佳作--植來植往(學生: 張景舜、周昕儀、陳冠潔、趙令婷)，2015年3月</li>
                        <li>指導學生參加2015行動終端創新應用App競賽第二名—記憶吐司(學生: 鄭育評、徐兆呈、歐陽介皓)，2015年11月</li>
                        <li>指導學生參加2015健康促進雲端加值應用評選表揚活動佳作--藥記得(學生:葉珈莉、溫鎧璘、朱建安、蔡映輝、黃振傑)，2015年12月</li>
                        <li>指導學生參加南台科技大學第十八屆專題製作競賽第二名 –-記憶吐司(學生: 鄭育評、徐兆呈、歐陽介皓)，2015年12月</li>
                        <li>指導學生參加南台科技大學第十八屆專題製作競賽佳作 –-藥記得(學生:葉珈莉、溫鎧璘、游宜均、黃振傑)，2015年12月</li>
                        <li>指導學生參加南台科技大學第十八屆專題製作競賽第三名 –-微積分教學平台(學生: 翁裕翔、黃崇豪、林雅苹、林郁姍)，2015年12月</li>
                        <li>指導學生參加第21屆全國大專院校資訊應用服務創新競賽資訊技術應用組 第三名–-植物小學堂(學生: 鄭育評、徐兆呈、陳耿緯、林郁姍、王韋力、陳宥伊、林承億、王昱婷)，2016年11月</li>
                        <li>指導學生參加南台科技大學第十九屆專題製作競賽第二名 –-微積分適性化教學平台(學生: 翁裕翔、黃崇豪、林雅苹、林郁姍)，2016年12月</li>
                        <li>指導學生參加南台科技大學第十九屆專題製作競賽佳作 –-藥記得(學生: 柯宗良、劉宋展、蔡哲維、謝長全)，2016年12月</li>
                        <li>指導學生參加2016行動與智慧終端創新應用競賽特優—記憶吐司(學生: 鄭育評、徐兆呈)，2016年12月</li>
                        <li>指導學生參加南臺科技大學第二十屆專題製作競賽佳作 –-藥你勞記(學生:林承億、陳宥伊、王昱婷、王韋力)，2017年12月</li>
                        <li>指導學生參加2018全國開放式硬體與物聯網應用創意競賽第二名 –-善栽善栽(學生:李瑋崧、柯日陞、林志威、林承億)，2018年5月</li>
                        <li>指導學生參加南臺科技大學第二十一屆專題製作競賽佳作 –-alpha波的秘密(學生:李瑋崧、鄭友智、楊承諭、陳宇峰)，2018年12月</li>
                        <li>指導學生參加南臺科技大學第二十一屆專題製作競賽暨優秀專題成果展傑出專題獎 –-善栽善栽(學生:柯日陞、李瑋崧、黃宇祥、林彤壎)，2018年12月</li>
                        <li>指導學生參加南臺科技大學2018校園三創競賽創業實踐類佳作 –-藉由網路探勘擷取資訊教育相關影音資訊以建構網路推薦平台(學生:徐梓恩、許家銘、黃裕欽、李柏星)，2018年12月</li>
                        <li>指導學生參加「2019 第四屆新創盃全國大專校院創意創新創業企劃競賽」- 雲端科技組優等 –-動植物照顧小幫手(學生: 曾家邦、張凱鈞、林耕禾、邱培倫)，2019年12月</li>
                    </ol>
                </div>
                <div class="tab-content-4">
                    <h4><b>主持之計劃</b></h4>
                    <ol>
                        <li>利用鷹架理論改善演算法教學與提升學習成效(教育部)(PEE1080210) 2019/08/01~2020/07/31 (20萬) </li>
                        <li>建置中小學資訊科技知識網路文章檢索與多媒體推薦系統(科技部)(MOST 108-2511-H-218-004) 2019/08/01~2020/07/31 (59.4萬) </li>
                        <li>建置中小學資訊教育之智慧型文章推薦系統(科技部) (MOST 107-2511-H-218-001) 2018/08/01~2019/07/31 (51.9萬) </li>
                        <li>藉由網路探勘分析巨量資料以建構資訊科技知識之概念圖與資訊檢索平台於技職資訊教育之評估(科技部) (MOST 106-2511-S-218-001-MY3) 2017/08/01~2020/07/31 (186萬) </li>
                        <li>兒童英語學習遊戲試題與歷程分析(產學合作計畫161050457) 2016/11/1~2017/4/30 (9.5萬) </li>
                        <li>建置花朵與葉片特徵檢索之植物查詢網站(科技部)(MOST 105-2511-S-218-005-) 2016/08/01~2017/07/31 (60萬) </li>
                        <li>利用花朵與葉片特徵檢索之植物查詢系統(科技部)(MOST 104-2511-S-218-003) 2015/08/01~2016/07/31 (51萬) </li>
                        <li>兒童英語學習遊戲移植專案(產學合作計畫161040153)2015/4/15~2016/4/14(87萬) </li>
                        <li>開發具情感回饋式電子書系統以實現創意教室於技職實作課程-情感回饋式電子書系統在行動裝置程式設計課程之建立與應用(科技部)(MOST103-2511-S-218 -003 -MY3) 2014/08/01~2017/07/31 (227.4萬) </li>
                        <li>依個人學習風格並結合雲端檢索技術推薦適性化之科技英文輔助學習教材(國科會) (NSC101-2511-S-218-004-MY2) 2012/08/01~2014/07/31　(165萬) </li>
                        <li>前瞻性電子書學習環境在軟體工程領域課程之建立與應用(國科會) ( NSC 100-2511-S-218-008-MY3) 2011/08/01~2014/07/31　(256.3萬) </li>
                        <li>以智慧型互動數位學習網實現科技英語適性化測驗並以學習歷程進行學習成效分析(國科會)( NSC 99-2511-S-218 -007 -MY2) 2010/08/01 ～ 2012/07/31　(110.1萬) </li>
                        <li>以智慧型社群網路支援語言動態例示建立情境感知學習環境－情境式英語學習之電腦適性化測驗與學習部落格文章之智慧型資訊檢索(國科會) (NSC 97-2511-S-218-003-MY3) 2008/08/01 ～ 2011/07/31 (219.1萬) </li>
                        <li>手持裝置之智慧型行動訂房系統(國科會) (小產學) (NSC96-2622-E-218 -019–CC3)2007/11/1~2008/10/31 (28.3萬) </li>
                        <li>智慧型行動學習系統之開發(國科會) (NSC95-2221-E-218-050) 2006/8/1~2007/7/31(44.9萬) </li>
                        <li>94年度『通訊科技人才培育先導型計畫』--國內種子教師補助計畫(教育部顧問室)2005/9/1~2006/1/30(36.4萬) </li>
                        <li>以基因演算法應用於動態排程之設計(國科會) (NSC93-2218-E-218-015) 2004/12/1~2005/7/31</li>
                    </ol>
                    <h4><b>共同主持之計劃</b></h4>
                    <ol>
                        <li>基於人工智慧發展多元國家考試類型與評測工具之研製(1/4) (科技部) (MOST 107-2634-F-007-008 -) 2018/01/01~2018/12/31 (115.25萬) </li>
                        <li>建立電腦適性學習系統-以工程基礎數學為例(科技部)(MOST 104-2511-S-218 -005) 2015/08/01~2016/07/31 (34.5萬) </li>
                        <li>創造力教學融入工程設計課程之實踐與成效評估-創造力教學與雲端創意實作平台之建構與維運（國科會NSC 102-2511-S-006-015-MY3）2013/12/01~2016/11/30 (433.1萬) </li>
                        <li>數位學習教學發展模式探究--數位學習內容與數位出版整合模式探究(國科會NSC 95-3113-P-006-004)2006/7/1~2007/6/30(155.6萬) </li>
                    </ol>
                    <h4><b>協同主持之計劃</b></h4>
                    <ol>
                        <li>94年度就業學程計畫：個人行動裝置多媒體軟體系統開發專精學程(勞委會)2005/9/1~2006/6/30</li>
                        <li>數位學習出國參訪考察與策略規劃研究計畫(教育部)2005/9/1~2005/11/30(287萬) </li>
                        <li>互動介面及學習助手與SCORM標準學習平台之整合(工研院光電所2005-16011) 2005/4/1~2005/12/31 (30萬) </li>
                    </ol>
                </div>
                <div class="tab-content-5">
                    <h4><b>指導碩士生之畢業論文</b></h4>
                    <ol>
                        <li>林彥廷，“數位學習環境下以決策樹為基礎之線上題庫難易度自動分級”July,2006.</li>
                        <li>蘇志偉，“行動網頁內容之智慧型處理系統” July,2006. </li>
                        <li>周振傑，“以模糊函數量化葉片特徵之植物檢索系統” July,2007. </li>
                        <li>劉炳宏，“行動裝置之植物查詢系統” July,2007. </li>
                        <li>蔡煒志，“建構一個行動學習系統-以救護訓練為例”June, 2008</li>
                        <li>黃高彬，“部落格之精華文章自動收錄系統”July, 2008</li>
                        <li>陳韻中，“基於Web2.0架構旅遊規劃推薦系統”June, 2009</li>
                        <li>黃庭筠，“運用高斯馬可夫預測學習曲線以實現適性化學習”June, 2010</li>
                        <li>吳昱德，“以科技英文輔助學習平台之學習歷程資料進行學習成效分析”June, 2010</li>
                        <li>潘逸峻，“以粒子群最佳化演算法結合知識結構於適性測驗選題之研究”July, 2011</li>
                        <li>洪紹祥，“以虛擬化技術開發應用於私有雲服務之旅遊資訊分類推薦系統”July, 2011</li>
                        <li>陳重光，“應用雲端虛擬化技術結合資訊檢索之演算法教學文章推薦”July, 2012</li>
                        <li>潘輝銘，“導入就業力指標進行學生就業能力與課程規劃之探討”July, 2012</li>
                        <li>陳冠宇，“以答題異常率估計試題參數結合粒子群最佳化演算法之動態選題策略於電腦適性化測驗”July, 2013</li>
                        <li>林昱志，“結合鑑別度指數與試題重複率於電腦適性化測驗之試卷品質分析”July, 2013</li>
                        <li>郭豐榮，“應用適性化混合式推薦技術於英文教學文章搜尋系統”July, 2013</li>
                        <li>鄭宇翔，“應用艾賓豪斯遺忘曲線理論結合間隔式學習探討背誦英文單字的記憶成效”July, 2013</li>
                        <li>胡家齊， “從社會促進理論探討科技英文平台之使用行為” July, 2014</li>
                        <li>郭岳岷， “應用艾賓豪斯遺忘曲線於英文單字之複習提醒系統” July, 2014</li>
                        <li>羅光男， “智慧型代理人於演算法教學平台之應用” July, 2014</li>
                        <li>邵建銘， “以模糊函數與質心距離量化花朵與葉片特徵之植物檢索系統” July, 2014</li>
                        <li>黃詩哲， “基於使用者能力值建置適性化之精華文章推薦系統” July, 2015</li>
                        <li>張景舜， “結合關聯法則之題目難易度調整系統” July, 2015</li>
                        <li>劉源蔁， “運用腦波訊號於記憶英語單字之學習專注力、認知負荷與學習成效之影響研究” February, 2016</li>
                        <li>梁景棠， “以腦波儀器量測不同難易度之數位與傳統教材於學習專注力並探討其學習成效與認知負荷” July, 2016</li>
                        <li>陳毅霖，“以腦波儀器進行微型實驗與足尺實驗並探討專注力與認知負荷之關聯”，July, 2017</li>
                        <li>黃建豪，“以腦波訊號各種足尺實驗探討專注力程度與持續時間”，January, 2019. </li>
                        <li>盧俊安，“以關鍵詞相關性進行文章檢索與圖片標記”，June, 2019. </li>
                        <li>翁裕翔，“以關聯法則輔助自動調整學生能力與試題難易度系統”，July, 2019. </li>
                        <li>黃振傑，“以建構式學習與鷹架式測驗探討演算法學習成效”，January, 2020. </li>
                    </ol>
                    <h4><b>指導科技部大專生計畫</b></h4>
                    <ol>
                        <li>張凱鈞，“藉由混合式推薦與網路探勘技術以建構微積分相關影音資訊推薦平台”，2019/07/01~2020/02/28. </li>
                        <li>徐梓恩，“藉由網路探勘擷取資訊教育相關影音資訊以建構網路推薦平台”，2018/07/01~2019/02/28. </li>
                        <li>李瑋崧，“使用人工智慧探勘腦波訊號與認知負荷相關性研究”，2018/07/01~2019/02/28. </li>
                        <li>陳宥伊，“結合遺忘曲線理論與腦波訊號探討學習專注力於不同時間複習英語單字之學習成效研究”， 2017/07/01~2018/02/28. </li>
                        <li>陳耿緯，“運用腦波訊號探討學習專注力於記憶不同數量之英語單字之學習成效之研究”， 2016/07/01~2017/02/28. </li>
                        <li>黃崇豪，“微積分適性化測驗平台之試題難易度自動化調整”， 2016/07/01~2017/02/28. </li>
                        <li>許志強，“結合智慧型手機與手機社群網站之複習通知系統於科技英文學習平台”， 2014/07/01~2015/02/28. </li>
                        <li>陳彥齊，“結合社群網站Facebook於同儕式學習之教學文章推薦系統—以程式設計課程為例”， 2013/07/01~2014/02/28. </li>
                        <li>張景舜，“以圖形視覺化呈現應用於程式設計教學”， 2012/07/01~2013/02/28. </li>
                        <li>蘇育正，“基於雲端運算之植物檢索行動學習平台”， 2011/07/01~2012/02/28. </li>
                        <li>王盈文，“行動裝置科技英文同儕式學習系統開發”， 2010/07/01~2011/02/28. </li>
                        <li>陳尉恒，“Web2.0植物學習與教材編輯系統”， 2010/07/01~2011/02/28. </li>
                        <li>林咏漢，“虛擬眼動儀系統之開發”， 2008/07/01~2009/02/28. </li>
                    </ol>
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
                    <small class="block">&copy; 指導教授：Shu-Chen Cheng (鄭淑真) 教授<br />
                    </small>
                    <small class="block">&copy; 電子郵件：kittyc@stust.edu.tw<br />
                    </small>
                    <small class="block">&copy; 製作: 111級資工系學生 : 梁博皓、顏子翔、尤品淇<br />
                    </small>

                    <!--<small class="block">推薦學習網址：<a href="http://ilearning.csie.stust.edu.tw/" target="_blank">智慧型系統實驗室ilab</a></small>-->
                </p>
                <ul class="fh5co-social-icons" style="margin-bottom: 55px">
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
                <a href="#about">關於教授</a>
            </li>
            <li>
                <a href="#Academic_research">教授相關生涯</a>
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
