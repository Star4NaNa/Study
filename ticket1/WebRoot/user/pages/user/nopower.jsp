<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script language="javascript">
  function openwin(){
  
       // window.open("gpcgpan.htm","newwindow","toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no");
        alert("没有权限")
  }

</script>

<script type="text/javascript">
	  var time=3;
	  setInterval("Time()",1000);
	  function Time(){
	    if(time==0){
	      location="${pageContext.request.contextPath}/user/pages/login.jsp";
	    }
	    
	    document.getElementById("layer").innerHTML="操作有误"+time+"秒后跳转....";
	    time--;
	  }
	</script>

</head>

<body onload="openwin()">	
<span id="layer"></span>

</body>
</html>
