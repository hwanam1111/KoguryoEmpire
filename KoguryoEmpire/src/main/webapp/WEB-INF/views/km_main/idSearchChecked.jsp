<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
if("${message}" == "회원님의 정보가 존재하지 않습니다."){
	alert("${message}");	
	location.href="km_idSearch.do"
}else{
	alert("${message}");
	location.href="km_login.do";
}
</script>