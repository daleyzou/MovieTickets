function loadIamges(positionId,type_code) {
    var thetype = "";
    var sum = 8;


    if (type_code == "owl-demo"){
        thetype = "新";
        sum = 6;
    }else if (type_code == "popular"){
        thetype = "火";
        sum = 5;
    }
    else if (type_code == "score"){
        thetype = "好";
        sum = 5;
    }
    else if (type_code == "recommend"){
        thetype = "荐";
        sum = 8;
    }
    else if (type_code == "upset"){
        thetype = "冷";
        sum = 8;
    }else {
        thetype = "随";
        sum = 8;
    }
    $.post("/BeginPageAction/loadImages",{ type_code:type_code},
        function(backData,textStatus,ajax){

            if (textStatus == "success") {
                //遍历
                //4 返回json数组对象,对其遍历
                $.each(backData, function (i, json) {

                    if (i == "list") {
                        for (var t = 1; t <= sum; t++){
                            $("#"+positionId+" #"+positionId+t.toString()+" .img-responsive").attr('src','images/'+json[t-1]['img']);
                            $("#"+positionId+" #"+positionId+t.toString()+" .img-responsive").attr('title',json[t-1]['name']);
                            $("#"+positionId+" #"+positionId+t.toString()+" .hvr-sweep-to-bottom").attr('href','movie/moviedesc?id='+json[t-1]['id']);
                            $("#"+positionId+" #"+positionId+t.toString()+" .daleyzou_name").text(json[t-1]['name']);
                            $("#"+positionId+" #"+positionId+t.toString()+" .daleyzou_time").text(json[t-1]['time'].substring(0, 4));
                            $("#"+positionId+" #"+positionId+t.toString()+" .daleyzou_p").text(thetype);
                            $("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings li").remove();
                            //显示几星  w3l-ratings
                            var score = json[t-1]['score'];
                            var $aal1 = $("<li><a href='#'><i class='fa fa-star' aria-hidden='true'></i></a></li>");
                            var $aal2 = $("<li><a href='#'><i class='fa fa-star' aria-hidden='true'></i></a></li>");
                            var $aal3 = $("<li><a href='#'><i class='fa fa-star' aria-hidden='true'></i></a></li>");
                            var $aal4 = $("<li><a href='#'><i class='fa fa-star' aria-hidden='true'></i></a></li>");
                            var $aal5 = $("<li><a href='#'><i class='fa fa-star' aria-hidden='true'></i></a></li>");


                            var $ahalf = $("<li><a href='#'><i class='fa fa-star-half-o' aria-hidden='true'></i></a></li>");

                            var $aempty1 = $("<li><a href='#'><i class='fa fa-star-o' aria-hidden='true'></i></a></li>");
                            var $aempty2 = $("<li><a href='#'><i class='fa fa-star-o' aria-hidden='true'></i></a></li>");
                            var $aempty3 = $("<li><a href='#'><i class='fa fa-star-o' aria-hidden='true'></i></a></li>");
                            var $aempty4 = $("<li><a href='#'><i class='fa fa-star-o' aria-hidden='true'></i></a></li>");
                            var $aempty5 = $("<li><a href='#'><i class='fa fa-star-o' aria-hidden='true'></i></a></li>");

                            var all = 0;
                            all = parseInt((score/2.0));
                            for (var j = 1; j <= all; j++){
                                if (j == 1){$("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings").append($aal1);}
                                if (j == 2){$("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings").append($aal2);}
                                if (j == 3){$("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings").append($aal3);}
                                if (j == 4){$("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings").append($aal4);}
                                if (j == 5){$("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings").append($aal5);}
                            }
                            if (((score/2.0)-all)>=0.5){
                                $("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings").append($ahalf);
                                all += 1;
                            }

                            if (all<5){
                                for (var m=1;m<=(5-all);m++){
                                    if (m == 1){$("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings").append($aempty1);}
                                    if (m == 2){$("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings").append($aempty2);}
                                    if (m == 3){$("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings").append($aempty3);}
                                    if (m == 4){$("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings").append($aempty4);}
                                    if (m == 5){$("#"+positionId+" #"+positionId+t.toString()+" .w3l-ratings").append($aempty5);}
                                }
                            }

                        }
                    }
                });
            }else {
                alert("daleyzou的首页ajax请求出错啦！")
            }
        },"json");
}
function showUserInfo() {
    $("#username_show").html("");
    $("#phone_show").html("");
    $("#level_show").html("");
    $("#sex_show").html("");
    $("#reg_time_show").html("");
    $("#adress_show").html("");
    $.post("/UserInfo/showUserInfo",
        function(backData,textStatus,ajax){

            if (textStatus == "success") {
                //遍历
                //4 返回json数组对象,对其遍历
                $.each(backData, function (i, json) {

                    if (i == "user") {
                        $("#username_show").html(json['username']);
                        $("#phone_show").html(json['phone']);
                        $("#level_show").html(json['level']);
                        $("#sex_show").html(json['sex']);
                        $("#reg_time_show").html(json['regTime']);
                        $("#adress_show").html(json['adress']);

                        $("#username").val(json['username']);
                        $("#sex").val(json['sex']);
                        $("#phone").val(json['phone']);
                        $("#adress").val(json['adress']);
                        $("#userid").val(json['id'].toString());
                        $("#pwd").val(json['password'].toString());
                        $("#level").val(json['level'].toString());
                        $("#regTime").val(json['regTime'].toString());
                    }
                });
            }else {
                alert("daleyzou的ajax读取个人信息失败了！")
            }
        },"json");
}