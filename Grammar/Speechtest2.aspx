<select id="language">
    <option value="cmn-Hant-TW">台灣</option>
    <option value="yue-Hant-HK">香港粵語</option>
    <option value="en-US">美式英語</option>
<!-- 在此增加 言語名稱 及 言語編碼 -->
</select>
<label>Continuously<input id="autoResume" type="checkbox" checked="checked"/></label>
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
            <%--<td><textarea id="resultContainer" rows="1" cols="1" style="border: 1px solid #000000; width: 100%; height: 500px; resize: vertical;"></textarea></td>--%>
        </tr>
    </tbody>
</table>
<script>
function twTime(){
  var utcTime =  new Date();
  console.log("utcTime =",utcTime);
  var twTime_yy= utcTime.getFullYear();
  var twTime_mh= utcTime.getMonth();
  var twTime_dd= utcTime.getDate();
  var twTime_hh= utcTime.getHours()+8;   //code pen 時間是倫敦標準時 UTC+0
  var twTime_mm= utcTime.getMinutes();
  var twTime_ss= utcTime.getMinutes();
  var twTime_ms= utcTime.getMilliseconds()
  var newTime = new Date(twTime_yy,twTime_mh,twTime_dd,twTime_hh,twTime_mm,twTime_ss,twTime_ms);
  //console.log("newTime"+newTime);
  return newTime;
}

function convertToPunctuation(string){
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
    for (var i in punctuations){
        string = string.split(i).join(punctuations[i]);
    }
    return string;
}
 
var SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
var num=0; //
window.addEventListener("load", function(){
    if (SpeechRecognition){
        speechRecognition = new SpeechRecognition();
        speechRecognition.status = true
        speechRecognition.continuous = true;
        speechRecognition.interimResults = true;
        speechRecognition.addEventListener("start", function(){
          	var newTime= twTime();
            console.log('newTime =',newTime);
            console.log('twTime() =',twTime());
            console.log('new Date() =',new Date());
            document.getElementById("toggle").value = "Stop Speech Recognition";
        });
        speechRecognition.addEventListener("result", function(event){
          console.log('event =',event); 
          var bufferContainer = document.getElementById("bufferContainer");
            var resultContainer = document.getElementById("resultContainer");
            var resultList = event.results;
            console.log('event.results =',event.results);
            console.log('resultList.item(0).item(0).transcript =',resultList.item(0).item(0).transcript);
          
            for (var i = 0; i < resultList.length; i++){
                var result = resultList.item(i);
                console.log('result[0].transcript',result[0].transcript);
                try{
                   var alternative = result.item(0);
                   console.log('alternative.transcript =',alternative.transcript);
                    var text = convertToPunctuation(alternative.transcript);
                    console.log('text =',text);
                    bufferContainer.value = resultContainer.value + text ;
                    console.log('bufferContainer.value=',bufferContainer.value);
                    console.log('resultContainer.value + text =',resultContainer.value + text);
                } catch (ex){
                    console.log('ex =',ex);
                }
                if (result.isFinal){
                    console.log('result.isFinal =',result.isFinal);
                    this.stop();
                    break;
                }
            }
        });
        
        speechRecognition.addEventListener("end", function(){            
            var bufferContainer = document.getElementById("bufferContainer");
            var resultContainer = document.getElementById("resultContainer");
            resultContainer.value = bufferContainer.value + "("+num+")" + "\n"; //
            num +=1;                                                        //
            var toggle = document.getElementById("toggle");
            var autoResume = document.getElementById("autoResume");
            if (toggle.value == "Stop Speech Recognition" && autoResume.checked){
                this.start();
            }
        });
    }
});
 
function toggleSpeechRecognition(){
    if (SpeechRecognition){
        var toggle = document.getElementById("toggle");
        if (toggle.value == "Stop Speech Recognition"){
            toggle.value = "Start Speech Recognition";
            speechRecognition.stop();
        } else {
            speechRecognition.lang = document.getElementById("language").value;
            speechRecognition.start();
        }
    } else {
        window.alert("This browser does not support Web Speech Recognition API.");
    }
}
 
function selectAllText(element){
    element.select();
}
 
function clearAllText(element){
    element.value = "";
}
 
function clearContainer(message){
    if (window.confirm(message)){
        clearAllText(document.getElementById('bufferContainer'));
        clearAllText(document.getElementById('resultContainer'));
    }
}
</script>