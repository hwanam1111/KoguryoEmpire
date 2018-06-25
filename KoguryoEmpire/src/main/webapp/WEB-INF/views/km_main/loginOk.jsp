<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
if("${message}" == "로그인실패"){
	alert("${message}");	
	location.href="km_login.do"
}else{
	alert("${message}");
	location.href="km_main.do";
}
</script>