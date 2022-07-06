$(document).ready(function(){
    getKetQua();
    let list;
    function getKetQua(){
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/webtoeic/api/admin/lichSu",
            success: function(result){
                list = result
                for (let i = 0; i < list.length; i++) {
                    console.log(list);
                    var ketquaRow = `<tr>
						<td>${list[i].tenbaithithu}</td>
						<td>${list[i].correctlisten}</td>
						<td>${list[i].correctreading}</td>
						<td>${list[i].socaudung}</td>
						<td>${list[i].socausai}</td>
						<td>${list[i].ngaythi}</td>
						<td>${list[i].tennguoithi}</td>
						</tr>`;
                    $('.ketquaTable tbody').append(ketquaRow);
                }



            },
            error : function(e){
                alert("Error: ",e);
                console.log("Error" , e );
            }
        });
    };
})
