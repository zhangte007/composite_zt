$(function(){
	// 超链接singleton
	$("#singleton").click(function(){
		var id = $(this).attr("name");
		$.ajax({
			url:path+"/ajax/singleton.do",
            type : 'post',
            data:{id:id},
			dataType:"json",
			success:function(data){
				console.log(data);
			}
		});
		
	});
});