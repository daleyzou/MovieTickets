function firstpage(){
    $.ajax({
        type:"post",
        url:"/movie/showallmovies",
        data:{"start":"0","page":"0"},
        dataType:"json",
        success:function (data) {
            window.location.href="/all.jsp";
        }
    });
}

function lastpage(start){
    $.ajax({
        type:"post",
        url:"/movie/showallmovies",
        data:{"start":start,"page":"-1"},
        success:function (data) {
            window.location.href="/all.jsp";
        }
    });
}

function nextpage(start){
    $.ajax({
        type:"post",
        url:"/movie/showallmovies",
        data:{"start":start,"page":"1"},
        success:function (data) {
            window.location.href="/all.jsp";
        }
    });
}