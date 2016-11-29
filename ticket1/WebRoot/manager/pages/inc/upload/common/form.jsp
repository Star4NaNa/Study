<%@ page language="java" pageEncoding="UTF-8"%>
<form style="margin-left:0px;margin-top: 0px;" name="upload_form" id="upload_form" action="${pageContext.request.contextPath}/upload" method="post"  enctype="multipart/form-data" target="upload_frame">
 <input name="upload_input"  id="upload_input" type="file" onchange="upload();"/>
 <input name="dir" type="hidden"  value="${param.dir}"/>
</form>
<script type="text/javascript">
function upload(){
	upload_form.submit();
}
$(document).ready(function(){
  var upload_result = ${empty upload_result?false:upload_result};
  var upload_error = "${upload_error}";
  var file_path = "${path}";
  var divid = "${param.divid}";
  //var inputid = "${param.inputid}";
  //var imgid = "${param.imgid}";
  if (upload_result){
     //隐藏域赋值
     //window.parent.parent.document.getElementById(inputid).value = file_path; 
     //设置图片显示
     //window.parent.parent.document.getElementById(imgid).src = "${pageContext.request.contextPath}/"+file_path; 
     //window.parent.parent.document.getElementById(imgid).style.display = "block"; 
  }else{
   if(upload_error != "")
    alert(upload_error);
  }
});
</script>