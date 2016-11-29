$(document).ready(function(){
	$(".sel_all").bind("click",function(e){
		stopBubble(e);
		//设置全选
		if ($(this).prop("checked")){
			$(".keyid").prop("checked",true);
		}else{
			$(".keyid").prop("checked",false);
		}
	});
	$(".sel_all").closest("tr").bind("click",function(e){
		if ($(".sel_all").prop("checked")){
			//改成未选中
			$(".sel_all").prop("checked",false);
			$(".keyid").prop("checked",false); 
		}else{
			//改成选中
			$(".sel_all").prop("checked",true);
			$(".keyid").prop("checked",true); 
		}
	});
	$(".keyid").closest("tr").bind("click",function(){
		if ($(this).find(".keyid").prop("checked")){
			$(this).find(".keyid").prop("checked",false);
		}else{
			$(this).find(".keyid").prop("checked",true);
		}
	});
	$(".keyid").bind("click",function(e){
		stopBubble(e);
	});
	$(".keyid").closest("tr").bind("dblclick",function(){
		dbClickTr($(this).find(".keyid").val());
	});
});

function stopBubble(e){
  //一般用在鼠标或键盘事件上
  if(e && e.stopPropagation){
  //W3C取消冒泡事件
  e.stopPropagation();
  }else{
  //IE取消冒泡事件
  window.event.cancelBubble = true;
  }
};
	  
//编辑条目
function p_edit(url){
	var length = $(".keyid").filter(":checked").size();
	if (length > 1){
		alert("只能对一个条目编辑！");
		return;
	}
	if (length < 1){
		alert("请选择一个条目编辑！");
		return;
	}
	$("#editForm").attr("action",url);
	$("#editForm").submit();
}
//删除条目
function p_del(url){
	var length = $(".keyid").filter(":checked").size();
	if (length < 1){
		alert("请至少选择一个条目删除！");
		return;
	}
	if (confirm("确认删除？")){
		$("#editForm").attr("action",url);
		$("#editForm").submit();
	}
}
//停用启用条目
function p_is_use(url){
	var length = $(".keyid").filter(":checked").size();
	if (length < 1){
		alert("请至少选择一个条目更改！");
		return;
	}
	$("#editForm").attr("action",url);
	$("#editForm").submit();
}