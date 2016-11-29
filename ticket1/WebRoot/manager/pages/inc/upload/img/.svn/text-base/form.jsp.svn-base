<%@ page language="java" pageEncoding="UTF-8"%>
<style type="text/css">
body{ font-size:14px;margin:0;}
input{ vertical-align:middle; margin:0; padding:0}
.file-box{ position:relative;width:340px}
.txt{ height:26px; border:1px solid #cdcdcd; width:170px;}
.btn{ background:url("${pageContext.request.contextPath}/images/upload.png");border:0;height:28px; width:70px; }
.file{ position:absolute;left:5;top:0;right:92px; height:28px; filter:alpha(opacity:0);opacity: 0;width:240px;}
</style>
<div class="file-box">
<form style="margin-left:0px;margin-top: 0px;" name="upload_form" id="upload_form" action="${pageContext.request.contextPath}/upload/img_upload" method="post"  enctype="multipart/form-data" target="upload_frame">
 <input type='text' id='FileTextField' class='txt'/>
 <input type='button' class='btn' />
 <input name="file_input"  id="upload_input" type="file" onchange="upload(this);" class="file" size="28"/>
 <input name="dir" type="hidden" value="${param.dir}"/>
 <input name="inputid" type="hidden" value="${param.inputid}"/>
 <input name="imgid" type="hidden" value="${param.imgid}"/>
 <input name="divid" type="hidden" value="${param.divid}"/>
</form>
</div>
<%@ include file="/js/inc/jquery.jsp" %>
<script type="text/javascript">
function upload(fileinput){
    $("#FileTextField").val(fileinput.value);
	upload_form.submit();
}
$(document).ready(function(){
  var upload_result = ${empty json.result ? false : json.result};
  var upload_error = "${json.message}";
  var file_path = "${json.path}";
  var inputid = "${param.inputid}";
  var imgid = "${param.imgid}";
  var divid = "${param.divid}";
  
  if (upload_result){
     //隐藏域赋值
     window.parent.document.getElementById(inputid).value = file_path; 
     //设置图片显示
     window.parent.document.getElementById(imgid).src = "${pageContext.request.contextPath}/img/"+file_path; 
     window.parent.document.getElementById(divid).style.display = "table-cell"; 
  }else{
   if(!upload_result && upload_error !='' )
    alert(upload_error);
  }
});
</script>