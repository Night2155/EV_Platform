document.addEventListener("DOMContentLoaded", function (event) {
    $("#sendthing").click(function () {
        $('.col').remove();
        var ip = $("#eIP").text();  //<%=GetUserIP%> //失靈了??
        var date = GetDate();
        var keywords = $('#send_something').val();
        if (keywords.length == 0 || keywords == " ") {
            alert("請輸入關鍵字搜尋!");
        }
        else {

            /*
            var copy = new Array();
            var _custom_dict = [""];//製造空字典 使用者新增                     
            call_jieba_cut(keywords, _custom_dict, function (result) {//結疤斷詞 (偷懶不用ngram)
                let remake = 0;
                for (let oldData = 0; oldData < result.length; oldData++) {
                    if (result[oldData] != " ") {
                        copy[remake] = result[oldData];
                        remake++;
                    }
                }
            });  //放棄 預期的字眼容易被截斷
            var cp2 = copy.toString();
            */
            $.ajax({
                url: "search",
                data: { /*Keywords: cp2,*/ user: ip, Sentence: keywords, Date: date, check: "1" },
                cache: false,
                type: "POST",
                traditional: true,
                dataType: 'JSON',
                async: false,
                success: function (data) {
                    var show_data = "";
                    if (data.length == 0) {
                        show_data += '<div class="col" style="color: #70757a;font-size: 14px;padding-left:40px;">查詢結果:' + '查無相關搜尋結果，請試著重新搜尋' + '<br><br></br></br></div>';
                        //console.log(data.length);
                    }
                    else {
                        var temp = [];
                        var find_key = true;
                        var num = 0;
                        var sentence = keywords;
                        while (find_key) {
                            data[num].keyword = data[num].keyword.split(',');
                            let list = data[num].keyword;
                            list.sort(function (a, b) {
                                return b.length - a.length;
                            });
                            for (let re_calc = 0; re_calc < data[num].keyword.length; re_calc++) {
                                if (sentence.includes(data[num].keyword[re_calc])) {
                                    temp.push(data[num].keyword[re_calc]);
                                    sentence = sentence.toString().replace(data[num].keyword[re_calc], "");
                                    find_key = false;
                                }
                                if (sentence === "") { break; }
                            }       //用第一筆結果抓出關鍵字
                            num = find_key == true ? num += 1 : num;
                        }
                        //console.log(num);

                        for (let tmp = 0; tmp < num + 1; tmp++) {
                            data[tmp].keyword = data[tmp].keyword.slice(0, temp.length * 5);
                            data[tmp].value = data[tmp].value.split(',').slice(0, temp.length * 5);//第一筆資料分割陣列處理
                        }
                        if (data.length > 0) {
                            for (let cut = num + 1; cut < data.length; cut++) {
                                let temp1_1 = data[cut].keyword.split(',');
                                let temp1_2 = data[cut].value.split(',');
                                let temp2_1 = temp1_1.slice(0, temp.length * 5);
                                let temp2_2 = temp1_2.slice(0, temp.length * 5);
                                data[cut].keyword = temp2_1
                                data[cut].value = temp2_2
                            }
                        }//若超過一筆的資料處理
                        //console.log(data);
                        var json_data = []
                        for (let review = 0; review < data.length; review++) {
                            var z = data[review].keyword.filter(function (val) {
                                return temp.indexOf(val) != -1;
                            });
                            if (z.length == temp.length) {
                                json_data.push(data[review]);
                                //console.log(data[review]);
                            }
                        }//資料排除 取得更相關的結果
                        data = json_data;
                        if (data.length > 1) {
                            data.sort(function (a, b) {
                                var a_position = 0, b_position = 0, a_value = 0, b_value = 0;
                                for (var i in temp) {
                                    a_position += a.keyword.indexOf(temp[i]);
                                    b_position += b.keyword.indexOf(temp[i]);
                                    a_value += parseFloat(a.value[a.keyword.indexOf(temp[i])]);
                                    b_value += parseFloat(b.value[b.keyword.indexOf(temp[i])]);
                                    //console.log(a_position);
                                }
                                if (a_position == b_position)
                                    return b_value - a_value;
                                else
                                    return a_position - b_position;
                            });//資料排序 最相關結果最上面 使用關鍵字權重加總 與 排名加總 做為比較
                        }//至少兩筆資料以上排序
                        show_data += '<div class="col" style="color: #70757a;font-size: 14px;padding-bottom: 20px;padding-right: 8px;">查詢結果共有' + (data.length).toString() + '項，相關詞:' + temp.toString() + '</div>';
                        for (let i = 0; i < data.length; i++) {
                            if (data[i].link.length <= 50)
                                link = data[i].link
                            else
                                link = data[i].link.substr(0, 50) + '...'

                            show_data += '<div class="col"><div class=" " ><a href="' + data[i].link + '"target="_blank" class="desc"><h3 class="title" style="margin: 0 0 0 0"><p3>' + (i + 1).toString() + '</p3>, ' + data[i].title + '</h3><font color="#20692b" size="1">' + link + '</font><br/><span><strong>關鍵字 :</strong>';

                            let temp_data = data[i].keyword;
                            //console.log(temp_data);
                            for (let j = 0; j < temp_data.length; j++) {
                                let check = true;
                                for (let k = 0; k < temp.length; k++) {
                                    if (temp_data[j] == temp[k]) {
                                        if (j == 0) {
                                            show_data += '<font color="blue">' + temp_data[j] + '</font>';
                                        }
                                        else {
                                            show_data += '<font color="blue">/' + temp_data[j] + '</font>';
                                        }
                                        check = false;
                                        break;
                                    }
                                }
                                if (check) {
                                    if (j == 0) {
                                        show_data += '<font color="black">' + temp_data[j] + '</font>';
                                    }
                                    else {
                                        show_data += '<font color="black">/' + temp_data[j] + '</font>';
                                    }
                                }
                                if (j > 9) {
                                    show_data += '<a>...</a>';
                                    break;
                                }

                            }
                            show_data += '</span></a></div><br/></div>';
                        }
                    }
                    $('#search_result').append(show_data);
                },
                error: function (err) {
                    alert("連接失敗");
                }

            });
        }

    });
});
function GetDate() {
    var today = new Date();
    return today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate() + ' ' + today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
}