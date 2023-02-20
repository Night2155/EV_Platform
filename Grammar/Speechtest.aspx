<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Speechtest.aspx.cs" Inherits="Grammar.Speechtest" %>


<!DOCTYPE html>

<html lang="zh-tw">

<head>
  <meta charset="UTF-8" />
  <title>英文教學小助手</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" />

  <!-- Bootstrap core CSS -->
  <link href="/static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <!-- Additional CSS Files -->
  <link rel="stylesheet" href="/static/assets/css/fontawesome.css" />
  <link rel="stylesheet" href="/static/assets/css/templatemo-plot-listing.css" />
  <link rel="stylesheet" href="/static/assets/css/animated.css" />
  <link rel="stylesheet" href="/static/assets/css/owl.css" />
  <link rel="stylesheet" href="/static/assets/css/bootstrap.min.css" />
  <link rel="stylesheet" href="/static/fontawesome/css/all.min.css" />
  <link rel="stylesheet" href="/static/assets/css/templatemo-style.css" />
  <link rel="stylesheet" href="/static/assets/css/chatroom.css" />
  <link rel="stylesheet" href="/static/assets/css/gotop.css" />
  <link rel="stylesheet" href="/static/assets/css/pageload.css"/>

  <script src="/static/vendor/jquery/jquery.min.js"></script>
  <!--參考模板 TemplateMo 556 Catalog-Z https://templatemo.com/tm-556-catalog-z -->
</head>

<body>
  <!-- Page Loader -->
  <div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
  </div>
  <nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
      <a class="navbar-brand">
        <!-- <i class="fas fa-film mr-2"></i> -->
        <img id="AI_icon" src="/static/assets/images/asistente-robot.gif" alt="AI_Robot" />
        英文教學小助手
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link nav-link-1" href="/">HomePage</a>
          </li>
          <li class="nav-item">
            <!--第二頁顯示全部的影片-->
            <a class="nav-link nav-link-2 active" aria-current="page" href="/SecondPage">All Videos</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="tm-hero d-flex justify-content-center align-items-center"
    style="background-image: url(/static/assets/images/demo.jpg)">
<!--    <form class="d-flex tm-search-form">-->
     <%-- <input class="form-control tm-search-input" id="search_bar" type="search" placeholder="Search" aria-label="Search" />
      <button class="btn btn-outline-success tm-search-btn" id="search_btn" type="submit" onclick="Ask()">
        <i class="fas fa-search"></i>
      </button>--%>
<!--    </form>-->
  </div>

  <div class="container-fluid tm-container-content tm-mt-60">
    <div class="listing-page">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="naccs">
              <div class="grid">
                <div class="container-fluid tm-container-content tm-mt-60">
                  <div class="row mb-4">
                    <h2 class="col-6 tm-text-primary" id="List_status">語音辨識</h2>
                  </div>
                  <div class="row tm-mb-90 tm-gallery" id="video_list">
                      <!-- STT -->
                      <!-- 在此增加 言語名稱 及 言語編碼 -->
                      <select  name="voice" id="voices">
                       <%-- <option value="Microsoft Aria Online (Natural) - English (United States)">美式發音</option>
                        <option value="Microsoft Libby Online (Natural) - English (United Kingdom)">英式發音</option>--%>
                      </select>
                      <div>
                        <textarea name="text">Change text in this text area</textarea>
                        <button id="stop">Stop!</button>
                        <button id="speak">Speak</button>
                      </div>

                  </div>
                    <!--TTS-->
                    <input id="toggle" type="button" value="Start Speech Recognition" onclick="toggleSpeechRecognition();"/>
                    <input id="clear" type="button" value="Clear Contents" onclick="clearContainer('Confirm to clear Contents？');"/>
                    
                    <table width="100%">
                        <colgroup>
                            <col width="50%"/>
                            <col width="50%"/>
                        </colgroup>
                    <thead>
                        <tr>
                            <th><input type="button" value="Select all Temporary Contents" onclick="selectAllText(document.getElementById('bufferContainer'));"/></th>
                            <th><input type="button" value="Select all Out Contents" onclick="selectAllText(document.getElementById('resultContainer'));"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr valign="top">
                            <td><textarea id="bufferContainer" rows="1" cols="1" readonly="readonly" style="border: 1px solid #000000; width: 100%; height: 500px; resize: vertical;"></textarea></td>
                            <td><textarea id="resultContainer" rows="1" cols="1" style="border: 1px solid #000000; width: 100%; height: 500px; resize: vertical;"></textarea></td>
                        </tr>
                    </tbody>
                    </table>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>




  </div>
  <!-- chatroom -->
  <div class="chatbubble">
    <img src="/static/assets/images/ai.png" alt="picture" />
  </div>
  <div class="chatbox chatbox22 chatbox--tray">
    <div class="chatbox__title">
      <h5>
        <a style="font-size: 20px; color: white">EL-Robot</a>
      </h5>
      <button class="chatbox__title__close">
        <span>
          <svg viewBox="0 0 12 12" width="12px" height="12px">
            <line stroke="#FFFFFF" x1="11.75" y1="0.25" x2="0.25" y2="11.75"></line>
            <line stroke="#FFFFFF" x1="11.75" y1="11.75" x2="0.25" y2="0.25"></line>
          </svg>
        </span>
      </button>
    </div>
    <div class="chatbox__body" id="chatroom_body">
      <!--Robot message-->
      <div class="chatbox__body__message chatbox__body__message--left">
        <img src="/static/assets/images/ai.png" alt="Picture" />
        <div class="ul_section_full">
          <ul class="ul_msg">
            <li><strong>AI_Robot</strong></li>
            <li>歡迎使用英文教學小助手 !</li>
          </ul>
        </div>
      </div>
      <div class="chatbox__body__message chatbox__body__message--left">
        <img src="/static/assets/images/ai.png" alt="Picture" />
        <div class="ul_section_full">
          <ul class="ul_msg">
            <li><strong>AI_Robot</strong></li>
            <li>您可以在下方輸入想查詢的關鍵字，我會推薦給您適合的教學影片喔</li>
          </ul>
        </div>
      </div>
      <div class="chatbox__body__message chatbox__body__message--left">
        <img src="/static/assets/images/ai.png" alt="Picture" />
        <div class="ul_section_full">
          <ul class="ul_msg">
            <li><strong>AI_Robot</strong></li>
            <li>小提醒: <br>可以在下方輸入"我想搜尋(關鍵字)"，機器人會幫您搜尋影片喔</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="panel-footer">
      <div class="input-group">
        <input id="btn-input" type="text" class="form-control input-sm chat_set_height" placeholder="Type your message "
          tabindex="0" dir="ltr" spellcheck="false" autocomplete="off" autocorrect="off" autocapitalize="off"
          contenteditable="true" />
        <span class="input-group-btn">
          <button type="button" class="btn btn-sm btn-danger" id="btn-chat" onclick="EnterKeywords()">
            Enter
          </button>
        </span>
      </div>
    </div>
  </div>

  <!-- GoTop button-->
  <div class="gototop js-top" id="gotop">
    <a href="#" class="js-gotop">
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
        <path d="M233.4 105.4c12.5-12.5 32.8-12.5 45.3 0l192 192c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L256 173.3 86.6 342.6c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3l192-192z"/>
      </svg>
    </a>
  </div>

  <!--chatroom action-->
  <script>
      var input = document.getElementById("btn-input");
      input.addEventListener("keypress", function (event) {
          if (event.key === "Enter") {
              event.preventDefault();
              document.getElementById("btn-chat").click();
          }
      });
      function EnterKeywords() {
          $(function () {
              // User Message 使用者的聊天氣泡
              var chats = $("#btn-input").val();
              var top =
                  '<div class="chatbox__body__message chatbox__body__message--right">';
              var userimag = '<img src="/static/assets/images/man.png" alt="Picture" />';
              var user_chat_section = '<div class="ul_section_full">';
              var user_msg = '<ul class="ul_msg">';
              var user_name = "<li><strong>User</strong></li>";
              var user_words = '<li id="uesr_questions">' + chats + "</li>";
              var bottom = "</ul></div></div>";
              var all =
                  top +
                  userimag +
                  user_chat_section +
                  user_msg +
                  user_name +
                  user_words +
                  bottom;
              $("#chatroom_body").append(all);
              Robot_Response(chats);
              Claerbtn_input();
              // alert(chats)
          });
      }
      function Robot_Response(user_Text) {
          $(function () {
              // Robot Message 機器人聊天氣泡
              $.ajax({
                  type: "POST",
                  url: "Bot_AIML",
                  data: { "user_Text": user_Text },
                  success: function (data) {
                      console.log(data);
                      if (data == "") {
                          data = "Sorry, what did you say?";
                      }
                      var top =
                          '<div class="chatbox__body__message chatbox__body__message--left">';
                      var robot_img = '<img src="/static/assets/images/ai.png" alt="Picture" />';
                      var robot_text_section = '<div class="ul_section_full">';
                      var robot_msg = '<ul class="ul_msg">';
                      var robot_name = "<li><strong>AI_Robot</strong></li>";
                      var robot_words = '<li id="robot_respones">' + data + "</li>";
                      var bottom = "</ul></div></div>";
                      var result =
                          top +
                          robot_img +
                          robot_text_section +
                          robot_msg +
                          robot_name +
                          robot_words +
                          bottom;
                      $("#chatroom_body").append(result);
                      ScorllDown();
                      // Robot Search For User's request 機器人進行搜尋動作
                      if (user_Text.includes("我想搜尋")) {
                          // console.log(user_Text.includes("我想搜尋"))
                          value = user_Text.split("我想搜尋")[1];
                          $("#search_bar").val(value);
                          AskDataFromServer();
                      }
                  },
              });
          });
      }

      function Claerbtn_input() {
          var input = document.getElementById("btn-input");
          input.value = "";
      }
      function ScorllDown() {
          var chat = $("#chatroom_body");
          chat.scrollTop(chat.prop("scrollHeight"));
      }
  </script>

  <!-- container-fluid, tm-container-content -->
  <footer class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
    <div class="container-fluid tm-container-small">
      <div class="row">
        <div class="col-lg-6 col-md-12 col-12 px-5 mb-5">
          <h3 class="tm-text-primary mb-4 tm-footer-title">About iLab</h3>
          <small class="block">©南台科技大學 資訊工程系 智慧型系統實驗室</small>
          <br />
          <small class="block">©指導教授 : Shu-Chen Cheng (鄭淑真) 教授</small>
          <br />
          <small class="block">©電子郵件 : kitty@stust.edu.tw</small>
          <br />
          <small class="block">©製作 : 資工四乙 莊子霆、吳易軒、黃正瑋</small>
          <br />
          <small class="block">推薦學習網址:<a href="https://ilearning.csie.stust.edu.tw/"
              target="_blank">智慧型系統實驗室</a></small>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
          <h3 class="tm-text-primary mb-4 tm-footer-title">
            About Professor
          </h3>
          <ul class="tm-footer-links pl-0">
            <a href="https://ilearning.csie.stust.edu.tw/Kitty/" target="_blank"><img src="/static/assets/images/kitty.png"
                class="img-style" /></a>
          </ul>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
          <ul class="tm-social-links d-flex justify-content-end pl-0 mb-5">
            <li class="mb-2">
              <a href="https://www.facebook.com/kitty.cheng.9406" target="_blank"><i class="fab fa-facebook"></i></a>
            </li>
            <li class="mb-2">
              <a href="https://ilearning.csie.stust.edu.tw/" target="_blank">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                  class="bi bi-hand-thumbs-up-fill" viewBox="0 0 16 16">
                  <path
                    d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z" />
                </svg>

              </a>
            </li>
            <li class="mb-2">
              <a href="https://csie.stust.edu.tw/" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                  height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                  <path
                    d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z" />
                </svg></a>
            </li>
            <!-- <li class="mb-2"><a href="https://pinterest.com"><i class="fab fa-pinterest"></i></a></li> -->
          </ul>
          <!-- <a href="#" class="tm-text-gray text-right d-block mb-2">Terms of Use</a>
            <a href="#" class="tm-text-gray text-right d-block">Privacy Policy</a> -->
        </div>
      </div>
      <!-- <div class="row">
          <div class="col-lg-8 col-md-7 col-12 px-5 mb-3">
            Copyright 2020 Catalog-Z Company. All rights reserved.
          </div>
          <div class="col-lg-4 col-md-5 col-12 px-5 text-right">
            Designed by <a href="https://templatemo.com" class="tm-text-gray" rel="sponsored"
              target="_parent">TemplateMo</a>
          </div>
        </div> -->
    </div>
  </footer>
  <script src="/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/static/assets/js/owl-carousel.js"></script>
  <script src="/static/assets/js/animation.js"></script>
  <script src="/static/assets/js/imagesloaded.js"></script>
  <script src="/static/assets/js/custom.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="/static/assets/js/chatroom.js"></script>
  <script src="/static/assets/js/plugins.js"></script>
  <script src="/static/assets/js/gotop.js"></script>
  <script src="/static/assets/js/ShowVideoOnSecondpage.js"></script>
  <script src="/static/assets/js/keypress.js"></script>
  <script src="/static/js/ShowVideoOnHomepage.js"></script>
  <script>
      $(window).on("load", function () {
          $("body").addClass("loaded");
      });
  </script>
</body>

</html>





 <script>
     // 語音轉文字
     function convertToPunctuation(string) {
         var punctuations = {
             "分行": "\n",
             "逗號": "，",
             "句號": "。",
             "頓號": "、",
             "冒號": "：",
             "分號": "；",
             "問號": "？",
             "驚嘆號": "！",
             "破折號": "——",
             "省略號": "……",
             "開括號": "（",
             "關括號": "）",
             "開引號": "「",
             "關引號": "」",
             "開雙引號": "『",
             "關雙引號": "』",
             "開書名號": "《",
             "關書名號": "》"
             //        開此增加自動匹配詞語轉換
         };
         for (var i in punctuations) {
             string = string.split(i).join(punctuations[i]);
         }
         return string;
     }

     var SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
     var num = 0; // 句子計數器
     var bufferContainer;
     window.addEventListener("load", function () {
         if (SpeechRecognition) {
             speechRecognition = new SpeechRecognition();
             speechRecognition.status = true
             speechRecognition.continuous = true;
             speechRecognition.interimResults = true;
             speechRecognition.addEventListener("start", function () {
                 //更改按鈕value
                 document.getElementById("toggle").value = "Stop Speech Recognition";
             });
             speechRecognition.addEventListener("result", function (event) {
                 //console.log('event =', event);
                 //var bufferContainer = document.getElementById("bufferContainer");
                 var resultContainer = document.getElementById("resultContainer");
                 var resultList = event.results;
                 //console.log('event.results =', event.results);

                 //辨識後的結果
                 //console.log('resultList.item(0).item(0).transcript =', resultList.item(0).item(0).transcript);

                 for (var i = 0; i < resultList.length; i++) {
                     var result = resultList.item(i);
                     //console.log('result[0].transcript', result[0].transcript);
                     try {
                         var alternative = result.item(0);
                         //console.log('alternative.transcript =', alternative.transcript);
                         var text = convertToPunctuation(alternative.transcript);
                         //console.log('text =', text);
                         bufferContainer = resultContainer.value + text;
                         //bufferContainer.value = bufferContainer.value + text;
                         //console.log('bufferContainer.value=', bufferContainer);
                         //console.log('resultContainer.value + text =', resultContainer.value + text);
                     } catch (ex) {
                         console.log('ex =', ex);
                     }
                     if (result.isFinal) {
                         //console.log('result.isFinal =', result.isFinal);
                         this.stop();
                         break;
                     }
                 }
             });

             speechRecognition.addEventListener("end", function () {
                 //var bufferContainer = document.getElementById("bufferContainer");
                 var resultContainer = document.getElementById("resultContainer");
                 resultContainer.value = bufferContainer + "(" + num + ")" + "\n"; //
                 num += 1;                                                        //
                 var toggle = document.getElementById("toggle");
                 //var autoResume = document.getElementById("autoResume");
                 //if (toggle.value == "Stop Speech Recognition" && autoResume.checked) {
                 //    this.start();
                 //}
                 if (toggle.value == "Stop Speech Recognition") {
                     this.start();
                 }
             });
         }
     });

     function toggleSpeechRecognition() {
         if (SpeechRecognition) {
             var toggle = document.getElementById("toggle");
             if (toggle.value == "Stop Speech Recognition") {
                 toggle.value = "Start Speech Recognition";
                 speechRecognition.stop();
             } else {
                 //speechRecognition.lang = document.getElementById("language").value;
                 speechRecognition.lang = "en-US";
                 speechRecognition.start();
             }
         } else {
             window.alert("This browser does not support Web Speech Recognition API.");
         }
     }

     function selectAllText(element) {
         element.select();
     }

     function clearAllText(element) {
         element.value = "";
     }

     function clearContainer(message) {
         if (window.confirm(message)) {
             clearAllText(document.getElementById('bufferContainer'));
             clearAllText(document.getElementById('resultContainer'));
         }
     }

 </script>

    <script>
        //   文字轉語音
        //
        //

        //設定msg為空 文字轉語音
        const msg = new SpeechSynthesisUtterance();
        //const textbox= document.querySelector('#te')
        const speakButton = document.querySelector('#speak');

        // 播放語音的函式
        function toggle() {
            // 讀出語音需求
            speechSynthesis.speak(msg);
        }

        // 設置要讀什麼
        //msg.text = 'Dudi is here.';

        speakButton.addEventListener('click', toggle);
        //document.getelementbyid 能選id以外的
        const voicesDropdown = document.querySelector('[name="voice"]');
        //let voices = ["Microsoft Aria Online (Natural) - English (United States)","Microsoft Libby Online (Natural) - English (United Kingdom)"];
        let voices = [];
        function populateVoices() {
            // 擷取語音模組清單
            voices = this.getVoices();
            //if (voices.name == "Microsoft Aria Online (Natural) - English (United States)" || voices.name == "Microsoft Libby Online (Natural) - English (United Kingdom)")
            //voicesDropdown.innerHTML = voices
                //.map(voice => `<option value="Microsoft Aria Online (Natural) - English (United States)">"Microsoft Aria Online (Natural) - English (United States)" (en-US)</option>`)
                //.join('');
            text = `<option value="Microsoft Aria Online (Natural) - English (United States)">美式發音(en-US)</option>` +
                `<option value="Microsoft Libby Online (Natural) - English (United Kingdom)">英式發音(en-GB)</option>`;
            voicesDropdown.innerHTML = text;
            console.log(voices);
        }

        // 當 `voicechanged` 觸發時，呼叫 `populateVoices` 函式載入支援語音
        speechSynthesis.addEventListener('voiceschanged', populateVoices);
        function setVoice() {
            msg.voice = voices.find(voice => voice.name === this.value);
            console.log(msg.voice);
            // 設定完就播放
            toggle();
        }

        voicesDropdown.addEventListener('change', setVoice);

        const options = document.querySelectorAll('[type="range"], [name="text"]');

        function setOption() {
            msg[this.name] = this.value;
            toggle();
        }

        options.forEach(option => option.addEventListener('change', setOption));
        msg.text = document.querySelector('[name=text]').value;
        console.log(document.querySelector('[name=text]').value);
        function toggle(startOver = true) {
            // 先停止
            speechSynthesis.cancel();
            // 如果 startOver 開關是打開的才會播放
            if (startOver) {
                speechSynthesis.speak(msg);
            }
        }

        // Stop 按鈕會把 startOver 開關關閉
        stopButton.addEventListener('click', toggle.bind(null, false));
    </script>
