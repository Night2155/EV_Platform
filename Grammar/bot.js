var element = $('.floating-chat');
var myStorage = localStorage;

setTimeout(function () {
    element.addClass('enter');
}, 1000);

element.click(openElement);

function openElement() {
    var messages = element.find('.messages');
    var textInput = element.find('.text-box');
    element.find('>i').hide();
    element.addClass('expand');
    element.find('.chat').addClass('enter');
    textInput.keydown(onMetaAndEnter).prop("disabled", false).focus();
    element.off('click', openElement);
    element.find('.header button').click(closeElement);
    element.find('#send-message').click(sendNewMessage);
    messages.scrollTop(messages.prop("scrollHeight"));
}

function closeElement() {
    element.find('.chat').removeClass('enter').hide();
    element.find('>i').show();
    element.removeClass('expand');
    element.find('.header button').off('click', closeElement);
    element.find('#send-message').off('click', sendNewMessage);
    element.find('.text-box').off('keydown', onMetaAndEnter).prop("disabled", true).blur();
    setTimeout(function () {
        element.find('.chat').removeClass('enter').show()
        element.click(openElement);
    }, 500);
}


let intro1 = ['很高興認識你！', '嗨～', '你好呀 ', '請多指教～']
let intro2 = ['我是卡卡喵～ʕ•̀ω•́ʔ✧', '我叫卡卡喵！ ( つ•̀ω•́)つ ', '我的名字叫做卡卡喵 (•ө•)♡']
let intro3 = ['Hi!', 'Hello!', 'Hi~ Nice to meet you.']
let goodmoring = ['早安!!', '早上好呀~', '今天早上天氣真好呢!!祝你有美好的一天:)', '日安。', 'Good Morning, Wish you have a good day!']
let goodnoon = ['午安!!!', '中午好><', '今天吃午飯了嗎~是否有吃飽呢?', '午安。']
let goodafternoon = ['下午好。', '嗨嗨', 'Good afternoon! Have a good day!']
let goodevening = ['傍晚好', 'Good evening!']
let goodnight = ['晚安!!!!', '今天辛苦你了呢!!祝你有個好夢:)', '晚安。', 'Good night! Have a good night!']
let nicetomeetu = ['很高興認識你~', 'Hi! Nice to meet you!', '你好呀!!']
let Idontknow = ['不好意思!!! 卡卡喵目前還小不懂這是什麼意思，會努力改進學習的!!', '抱歉，我不太明白你的意思，目前還在努力學習…', '太高深了，卡卡喵目前還在學習中，不好意思...', '卡卡喵深感抱歉...真心不懂, 目前還在學習理解中QQ', '換個話題好不好~ 卡卡喵聽不太懂呢目前這方面還在學習!!', '腦袋有點轉不過來，請問可以換一個話題或問題嗎!!', '可以跟卡卡喵談點別的嗎...這方面知識還在精進中QHQ', '請問是否可以說詳細一點呢！', '可以說具體一點嗎~卡卡喵聽不太懂!!', '抱歉不太懂您的意思，請問可以說詳細一點嗎!', '不好意思這方面卡卡喵仍然在學習中，您可以嘗試問問看別的問題!!']
let Idontwanttoworkanymore = ['我也不想努力了...', '阿姨我不想努力了...', '+1...', '不想努力了...', '<img src="https://dvblobcdnjp.azureedge.net//Content/ueditor/net/upload1/2021-01/05d66349-e94d-4550-8121-4ed34b428b60.jpg" alt=" " style="border-radius: 8px;  max-width: 100%;height: auto;">', '<img src="https://stickershop.line-scdn.net/stickershop/v1/sticker/351390990/android/sticker.png" alt=" " style="border-radius: 8px;  max-width: 100%;height: auto;">']
let Bye1 = ['再見拉', '掰掰下次見!!', '再會了~', '感謝詢問，再見~', '謝謝你的詢問~掰掰!!', 'See You!', 'Bye~', 'Bye Bye!!', 'Thank you~ Bye :)', 'Good Bye.']
let Bye2 = ['See You!', 'Bye~', 'Bye Bye!!', 'Thank you~ Bye :)', 'Good Bye.']
let really = ['真的', '假的', '我不知道...', '假作真時真亦假', '無為有處有還無']
let angry = ['發怒一分鐘失去60秒的幸福', '生氣會變老喔~', '別生氣啦']
let Drawlots = ['大吉', '中吉', '小吉', '吉', '半吉', '末小吉', '凶', '小凶', '半凶', '末凶', '大凶']
let Idontknow2 = ['如果不知道用法如何使用的話，請輸入："不可數名詞使用方式為何？"、"什麼是假設語氣???"、"形容詞子句用途"...諸如此類的英文文法詢問喔！', '溫馨提示：此為搜索英文文法並非其他科目的搜索平臺喔！可使用像是 "未來進行式句子上怎麼使用" 這種進行提問:) 謝謝~', '小提示：可搜索類似"地方從屬子句是什麼", "多益考試學習", "過去簡單式使用方法"...等等去進行搜索喔！']
let itisnotCHI = ['What’s wrong with you? ', '', 'What’s your problem??? ', 'Waht were you thinking?? ', 'You are away too far! ', 'I’m very disappointed. ', 'Nonsense... ', 'I’m telling you for the last time. ', 'Enough is enough... ']
let itisnotCHI2 = ['This is already in English mode.', 'It is already in english mode.', 'This is the English mode!', 'English mode is here!', 'It’s already in English mode, okay?', 'It’s already in English mode now, can’t you see it ?', 'It’s already in English mode now...']
let itisnot = ['<img src="https://attach.setn.com/newsimages/2016/07/02/575913-XXL.jpg" alt=" " style="border-radius: 8px;  max-width: 100%;height: auto;">', '', '', '', '', '', '', '', '', '', '', '', '', '', '<img src="https://scontent.xx.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/59635010_371931060088009_685154481800740864_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=110474&_nc_ohc=Ei0z1XR2mEgAX-w7pmt&_nc_ht=scontent.fkhh1-1.fna&oh=00_AT-Nfnu-GipLqTIWnLZpgGoBMepevXCwx_EHzBi3N5mQYw&oe=61E95BCE&_nc_fr=fkhh1c01" alt=" " style="border-radius: 8px;  max-width: 100%;height: auto;">']
let itisnotENG = ['現在已經是中文模式了！！！', '目前就是中文模式，OK? ', '現在就是中文模式了喔~ ', '已經跟你說過了這就是中文模式你是看不懂？', '目前就是中文模式了喔! ']



var ChiOrEng = true; // true 默認英文 false 切換中文

var msgs = "";
const cors = 'https://cors-anywhere.herokuapp.com/';
const url = 'https://api.ip.sb/geoip/';
async function getUsers() {
    try {
        const response = await axios.get(url)
            .then((response) => {
                const msg = response.data;
                $('#e2IP').remove();
                $('#ipip').append("<p style='display: none' id='e2IP'>" + msg.ip + "</p>");
            },
            (error) => {
                console.log("GET IP FAILED")
            }
            );
    } catch (error) {
        console.error(error);
    }
}
getUsers();
function sendNewMessage() {
    var user_input_messages = $('.text-box');
    var new_Message = user_input_messages.html();
    var datasuccess = true;

    if (!new_Message) return;

    SendMessagesToMessagesContainer('people', new_Message);

    var split_data = [];
    var bot_messages = "";
    var ip = $("#e2IP").text();
    //console.log(ip);
    $.ajax({
        url: 'backend',
        data: { data: new_Message.toString(), user: ip },
        cache: false,
        async: false,
        type: "POST",
        dataType: 'TEXT',
        timeout: 2500,
        success: function (data) {
            bot_messages = data;
            if (bot_messages.charAt(0) == '1')
                datasuccess = true;
            else if (bot_messages.charAt(0) == '-1') {
                datasuccess = true;
                bot_messages = "資料庫連接失敗";
            }
            else {
                datasuccess = false;
            }
        },
        error: function (err) {
            //alert("連接失敗");
            datasuccess = false;
        }
    });

    if (new_Message == '切換中文對話' || new_Message == '1' || new_Message == '1. 切換中文對話' || new_Message == '1.切換中文對話' || new_Message == '1.' || new_Message == '切換英文對話' || new_Message == '2' || new_Message == '2. 切換英文對話' || new_Message == '2.切換英文對話' || new_Message == '2.') {
        datasuccess = false;
    }
    if (datasuccess == false) {
        $.ajax({
            url: 'Bot_AIML',
            data: { Message: new_Message },
            cache: false,
            traditional: true,
            async: false,
            type: "POST",
            dataType: 'TEXT',
            timeout: 2000,
            success: function (bot_message) {
                bot_messages = bot_message;
            },
            error: function (err) {
                alert("連接失敗");
            }
        });
    }


    SendMessagesToMessagesContainer('bot2', '···');
    user_input_messages.html('');
    setTimeout(function () {
        if (datasuccess) {
            //SendMessagesToMessagesContainer('bot', datas);

            var split_data = bot_messages.slice(1).split(";");
            split_data.forEach(element => SendMessagesToMessagesContainer('bot', element.split(" ")[0] + "\n" + element.split(" ")[1].link(element.split(" ")[1])));
            SendMessagesToMessagesContainer('bot', "以上有符合你的期許嗎!");
            $('.bot2').remove();

        }
        else {

            if (ChiOrEng) {
                if (new_Message == '切換中文對話' || new_Message == '1' || new_Message == '1. 切換中文對話' || new_Message == '1.切換中文對話' || new_Message == '1.') {
                    ChiOrEng = false;
                    SendMessagesToMessagesContainer('bot', '切換中文對話成功！');
                }
                else if (new_Message == '切換英文對話' || new_Message == '2' || new_Message == '2. 切換英文對話' || new_Message == '2.切換英文對話' || new_Message == '2.') {
                    var mewo = itisnot[Math.floor(Math.random() * itisnot.length)]

                    SendMessagesToMessagesContainer('bot', itisnotCHI[Math.floor(Math.random() * itisnotCHI.length)] + ' ' + itisnotCHI2[Math.floor(Math.random() * itisnotCHI2.length)]);

                    if (mewo != '')
                        SendMessagesToMessagesContainer('bot', mewo);

                    SendMessagesToMessagesContainer('bot', 'If you want to change to Chinese mode, please enter 「切換中文對話」');
                }
                else
                    SendMessagesToMessagesContainer('bot', bot_messages);
                $('.bot2').remove();
            }
            else if (!ChiOrEng) {
                if (new_Message == '切換英文對話' || new_Message == '2' || new_Message == '2. 切換英文對話' || new_Message == '2.切換英文對話' || new_Message == '2.') {
                    ChiOrEng = true;
                    SendMessagesToMessagesContainer('bot', '切換英文對話成功！');
                }
                else if (new_Message == '切換中文對話' || new_Message == '1' || new_Message == '1. 切換中文對話' || new_Message == '1.切換中文對話' || new_Message == '1.') {
                    var mewo = itisnot[Math.floor(Math.random() * itisnot.length)]

                    SendMessagesToMessagesContainer('bot', itisnotENG[Math.floor(Math.random() * itisnotENG.length)]);

                    if (mewo != '')
                        SendMessagesToMessagesContainer('bot', mewo);

                    SendMessagesToMessagesContainer('bot', '若想改變成英文模式的話請輸入「切換英文對話」');
                }
                else
                    ChiReply(new_Message);
                $('.bot2').remove();
            }
        }
    }, 500 + (Math.random() * 20) * 100);

    user_input_messages.focus();
}
//----------------------------------------------------------------------//
function SendMessagesToMessagesContainer(someone, messages) {
    var messagesContainer = $('.messages');
    messagesContainer.append([
        '<li class="' + someone + '">',
        messages,
        '</li>'
    ].join(''));
    messagesContainer.finish().animate({ scrollTop: messagesContainer.prop("scrollHeight") }, 250);
}

function ChiReply(messages) {
    if (messages.includes('你好') || messages.includes('您好') || messages.includes('嗨') || messages.includes('哈囉') || messages.includes('安安')) {
        SendMessagesToMessagesContainer('bot',
            intro1[Math.floor(Math.random() * intro1.length)] + intro2[Math.floor(Math.random() * intro2.length)] + '<br>'
            + '請問今天有什麼文法搜尋需求呢？有什麼需求的話可以呼叫卡卡喵就會出現了喔~');
    }
    else if (messages.includes('hello') || messages.includes('Hello') || messages.includes('Hi') || messages.includes('hi')) {
        SendMessagesToMessagesContainer('bot', intro3[Math.floor(Math.random() * intro3.length)]);
    }
    else if (messages.includes('Thanks') || messages.includes('thank')) {
        SendMessagesToMessagesContainer('bot', 'You\'re welcome!');
    }
    else if (messages.includes('謝謝') || messages.includes('謝了') || messages.includes('感謝')) {
        SendMessagesToMessagesContainer('bot', '不客氣!');
    }
    else if (messages.includes('你從哪裡來的') || messages.includes('你哪裡人') || messages.includes('你出生在') || (messages.includes('哪來的') && messages.includes('你'))) {
        SendMessagesToMessagesContainer('bot', 'iLab 出生的!');
    }
    else if (messages.includes('Where are you from') || messages.includes('Where\'re you from')) {
        SendMessagesToMessagesContainer('bot', 'I am from iLab.');
    }
    else if (messages.includes('iLab是什麼') || messages.includes('ilab是什麼') || messages.includes('ilab實驗室') || messages.includes('iLab實驗室') || messages == 'iLab' || messages == 'ilab') {
        SendMessagesToMessagesContainer('bot', 'iLab實驗室相關網站在這裡喔 <br> <a href="https://ilearning.csie.stust.edu.tw/index/" target="_blank">https://ilearning.csie.stust.edu.tw/index/</a>');
    }
    else if (messages == '鄭淑真' || messages == 'Shu-Chen Cheng') {
        SendMessagesToMessagesContainer('bot', '教授相關網站在這裡喔 <br> <a href="https://ilearning.csie.stust.edu.tw/Kitty/" target="_blank">個人網站1</a><br><a href="Wonderful_Professor.aspx" target="_blank">個人網站2</a> <br><a href="https://csie.stust.edu.tw/tc/node/Teacher11" target="_blank">學校網站</a> ');
    }
    else if (messages == '喵喵' || messages == '汪汪' || messages == '呱呱' || messages == '咩咩' || messages == '哞哞'
        || messages == '呱呱' || messages == '知了知了' || messages == '知了' || messages == '咪咪' || messages == '唧唧' || messages == '嘰嘰'
        || messages == '嗷嗚' || messages == '嗷嗷' || messages == '吱吱' || messages == '咯咯') {
        var animal = Math.floor(Math.random() * 2)
        if (animal == 0)
            SendMessagesToMessagesContainer('bot', messages);
        else
            SendMessagesToMessagesContainer('bot', '朕已閱。');
    }
    else if (messages.includes('早安') || messages.includes('日安') || messages.includes('早上好') || messages.includes('Good Morning') || messages.includes('Good morning') || messages.includes('good morning') || messages.includes('goodmorning')) {
        SendMessagesToMessagesContainer('bot', goodmoring[Math.floor(Math.random() * goodmoring.length)]);
    }
    else if (messages.includes('午安') || messages.includes('吃午餐') || messages.includes('中午好') || messages.includes('Good Noon') || messages.includes('Good noon') || messages.includes('good noon') || messages.includes('goodnoon')) {
        SendMessagesToMessagesContainer('bot', goodnoon[Math.floor(Math.random() * goodnoon.length)]);
    }
    else if (messages.includes('下午好') || messages.includes('Good Afternoon') || messages.includes('Good afternoon') || messages.includes('good afternoon') || messages.includes('goodafternoon')) {
        SendMessagesToMessagesContainer('bot', goodafternoon[Math.floor(Math.random() * goodafternoon.length)]);
    }
    else if (messages.includes('傍晚好') || messages.includes('Good Evening') || messages.includes('Good evening') || messages.includes('good evening') || messages.includes('goodevening')) {
        SendMessagesToMessagesContainer('bot', goodevening[Math.floor(Math.random() * goodevening.length)]);
    }
    else if (messages.includes('晚安') || messages.includes('做好夢') || messages.includes('晚上好') || messages.includes('Good Night') || messages.includes('Good night') || messages.includes('good night') || messages.includes('goodnight')) {
        SendMessagesToMessagesContainer('bot', goodnight[Math.floor(Math.random() * goodevening.length)]);
    }
    else if (messages.includes('你是誰') || messages.includes('妳是誰') || messages.includes('你的名字') || messages.includes('妳的名字') || (messages.includes('卡卡喵') && messages.includes('用處')) || (messages.includes('卡卡喵')) && messages.includes('幫助') || messages.includes('Who are you')) {
        var whoareu = Math.floor(Math.random() * 2)
        if (whoareu == 0)
            SendMessagesToMessagesContainer('bot', '我是英文文法搜索小助手! 你可以叫我卡卡喵喔~ 有什麼問題可以提出來卡卡喵知道的話馬上幫助你。');
        else
            SendMessagesToMessagesContainer('bot', '未曾生我誰是我？生我之時我是誰？來時歡喜去時悲，合眼朦朧又是誰？');
    }
    else if (messages.includes('卡卡喵') || messages == '?' || messages == '??' || messages == '???' || messages == '????' || messages == '?????') {
        SendMessagesToMessagesContainer('bot', '英文文法搜索小助手在此，請問有什麼可以幫助你的呢？ 打出來卡卡喵知道的話會馬上幫助你的。');
    }
    else if (messages.includes('我的名字是') || messages.includes('我的名字') || messages.includes('我叫')) {
        SendMessagesToMessagesContainer('bot', nicetomeetu[Math.floor(Math.random() * nicetomeetu.length)]);
    }
    else if (messages.includes('不想努力')) {
        SendMessagesToMessagesContainer('bot', Idontwanttoworkanymore[Math.floor(Math.random() * Idontwanttoworkanymore.length)]);
    }
    else if (messages.includes('再見') || messages.includes('掰掰') || messages.includes('ㄅㄅ') || messages.includes('再會') || messages == '掰') {
        SendMessagesToMessagesContainer('bot', Bye1[Math.floor(Math.random() * Bye1.length)]);
    }
    else if (messages.includes('Bye') || messages.includes('bye')) {
        SendMessagesToMessagesContainer('bot', Bye2[Math.floor(Math.random() * Bye2.length)]);
    }
    else if (messages.includes('真的假的')) {
        SendMessagesToMessagesContainer('bot', really[Math.floor(Math.random() * really.length)]);
    }
    else if (messages == 'Really?') {
        SendMessagesToMessagesContainer('bot', 'Really.');
    }
    else if (messages.includes('Very Good')) {
        SendMessagesToMessagesContainer('bot', 'Wonderful!');
    }
    else if (messages.includes('很棒') || messages.includes('太好了')) {
        SendMessagesToMessagesContainer('bot', '我也這麼覺得!');
    }
    else if (messages == '好呀' || messages == '好阿' || messages == '好啊' || messages == '好ㄚ' || messages == '好' || messages == '當然好') {
        SendMessagesToMessagesContainer('bot', '真爽快!');
    }
    else if (messages.includes('天地玄黃')) {
        SendMessagesToMessagesContainer('bot', '宇宙洪荒!');
    }
    else if (messages.includes('對嗎?')) {
        SendMessagesToMessagesContainer('bot', '答案在你心中，請用心去思考。');
    }
    else if (messages.includes('不明覺厲')) {
        SendMessagesToMessagesContainer('bot', '雲裡霧裡...');
    }
    else if ((messages.includes('今天') || messages.includes('明天') || messages.includes('昨天') || messages.includes('後天'))
        && (messages.includes('天氣') || messages.includes('下雨') || messages.includes('太陽') || messages.includes('晴朗') || messages.includes('陰天') || messages.includes('颱風'))) {
        SendMessagesToMessagesContainer('bot', '無論是刮風下雨還是陽光燦爛，你我一片真心依舊所以不要在意了吧！');
    }
    else if (messages.includes('悲劇')) {
        SendMessagesToMessagesContainer('bot', '悲劇是暫時的，戲劇是永恆的。');
    }
    else if (messages.includes('高興')) {
        SendMessagesToMessagesContainer('bot', '心情好什麼都美好拉~');
    }
    else if (messages.includes('人生') && messages.includes('意義')) {
        SendMessagesToMessagesContainer('bot', '人生的意義就是思考人生的意義。');
    }
    else if (messages.includes('宇宙') && messages.includes('答案')) {
        SendMessagesToMessagesContainer('bot', '從心。');
    }
    else if (messages.includes('生氣') || messages.includes('氣死')) {
        SendMessagesToMessagesContainer('bot', angry[Math.floor(Math.random() * angry.length)]);
    }
    else if (messages.includes('肚子餓')) {
        SendMessagesToMessagesContainer('bot', '我也是...');
    }
    else if (messages.includes('蔡依林')) {
        SendMessagesToMessagesContainer('bot', '南臺蔡依林連結 <br> <a href="https://ilearning.csie.stust.edu.tw/Kitty/" target="_blank">個人網站1</a><br><a href="Wonderful_Professor.aspx" target="_blank">個人網站2</a> <br><a href="https://csie.stust.edu.tw/tc/node/Teacher11" target="_blank">學校網站</a> ');
    }
    else if ((messages.includes('教授') || messages.includes('老師')) && (messages.includes('美麗') || messages.includes('漂亮'))) {
        SendMessagesToMessagesContainer('bot', '南臺蔡依林不是蓋的!');
    }
    else if (messages.includes('男的女的') || messages.includes('性別') || messages.includes('身高') || messages.includes('身材')) {
        SendMessagesToMessagesContainer('bot', '喵喵喵?');
    }
    else if (messages.includes('抽籤')) {
        SendMessagesToMessagesContainer('bot', Drawlots[Math.floor(Math.random() * Drawlots.length)]);
    }
    else if (messages.includes('Algorithm')) {
        SendMessagesToMessagesContainer('bot', '今天吃大餐');
    }
    else if (messages.includes('實驗室最強王者') || messages.includes('實驗室最強') || messages.includes('實驗室王者') || messages.includes('實驗室地縛靈') || messages.includes('iLab最強王者') || messages.includes('iLab最強') || messages.includes('iLab王者') || messages.includes('iLab地縛靈') || messages.includes('地縛靈') || messages.includes('金豐') || messages.includes('大學長')) {
        SendMessagesToMessagesContainer('bot', '110級碩班畢業生 曾金豐學長');
    }
    else if (messages.includes('平台架設') || messages.includes('建置平台') || messages.includes('架設人員') || messages.includes('技術') || messages.includes('支援') || messages.includes('學長')) {
        SendMessagesToMessagesContainer('bot', '此平台由 111級學士班畢業生 梁博皓學長、顏子翔學長、尤品淇學姊 所建置');
    }
    else if (messages.includes('梁博皓')) {
        SendMessagesToMessagesContainer('bot', '嗨~你好 這是我們一同打造的平台 如果有任何問題歡迎私訊!');
    }
    else if (messages.includes('顏子翔')) {
        SendMessagesToMessagesContainer('bot', '嗨~你好 南臺獎學金 真香');
    }
    else if (messages.includes('尤品淇')) {
        SendMessagesToMessagesContainer('bot', '<img src="https://img.ttshow.tw/images/author/Lindsey/1595038166748.jpg" alt=" " style="border-radius: 8px;  max-width: 100%;height: auto;">');
    }
    else if (messages == '沒有') {
        SendMessagesToMessagesContainer('bot', '不好意思! 目前對話部分訓練的尚未很完善 需要有更多的對話才能幫助我們達到最佳訓練結果!');
    }
    else if (messages == '有') {
        SendMessagesToMessagesContainer('bot', '謝謝您的支持!');
    }
    else if (messages == '好') {
        SendMessagesToMessagesContainer('bot', '不好');
    }
    else if (messages == '不好') {
        SendMessagesToMessagesContainer('bot', '好啦');
    }
    else if (messages.includes('南台最好吃的') || messages.includes('南臺最好吃的')) {
        SendMessagesToMessagesContainer('bot', '<img src="https://lh5.googleusercontent.com/p/AF1QipPJ7iyv9X2K7U62l28lJeZ8igkuH2wQVkm_ECLH=w426-h240-k-no" alt=" " style="border-radius: 8px;  max-width: 100%;height: auto;">');
        SendMessagesToMessagesContainer('bot', '茶丸人餐飲專賣店 (南台店)' + '<br>' + '地址：710 台南市永康區南台街54巷12號' + '<br>' + '電話：+886 - 62437090' + '<br>' + '心動不如行動 ---> <a href="https://www.google.com/maps/place/%E8%8C%B6%E4%B8%B8%E4%BA%BA%E9%A4%90%E9%A3%B2%E5%B0%88%E8%B3%A3%E5%BA%97%EF%BC%88%E5%8D%97%E5%8F%B0%E5%BA%97%EF%BC%89/@23.0156331,120.2199038,15z/data=!4m9!1m2!2m1!1z6Iy25Li45Lq65pel5byP5bCI6LOj5bqX!3m5!1s0x346e7751e7fc18b5:0x730fe83cca0f6623!8m2!3d23.023143!4d120.222949!15sChjojLbkuLjkurrml6XlvI_lsIjos6PlupdaICIe6Iy2IOS4uCDkurog5pelIOW8jyDlsIjos6Mg5bqXkgETamFwYW5lc2VfcmVzdGF1cmFudA" target="_blank">地圖查詢</a>');
    }
    else {
        SendMessagesToMessagesContainer('bot', Idontknow[Math.floor(Math.random() * Idontknow.length)]);
        setTimeout(function () {
            SendMessagesToMessagesContainer('bot', Idontknow2[Math.floor(Math.random() * Idontknow2.length)]);
        }, 1000 + (Math.random() * 20) * 100);
    }
}

function onMetaAndEnter(event) {
    if (event.keyCode == 13)
        sendNewMessage();
}

document.body.oncopy = function () {
    event.returnValue = false;
}