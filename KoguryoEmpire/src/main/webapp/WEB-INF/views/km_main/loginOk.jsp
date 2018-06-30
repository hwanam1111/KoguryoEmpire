<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
if("${message}" == "회원님의 아이디나 비밀번호가 일치하지 않습니다."){
	alert("${message}");	
	location.href="km_login.do"
}else{
	alert("${message}");
	location.href="km_main.do";
}
</script>