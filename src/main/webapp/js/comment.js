




function getComment() {
    $.ajax({
        type:"post",
        url:"/comment/getCommentForUser",
        data:{},
        dataType:"json",
        success:function (json) {
            for (var i=0 in json){
                $("#commentlist").html(
                <tr>
                    <td class="w3-list-info">json[i].username</td>
                    <td class="w3-list-info">json[i].time</td>
                    <td class="w3-list-info">json[i].content</td>
                </tr>)
            }
        }
    });
}