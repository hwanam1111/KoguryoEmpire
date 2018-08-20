<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_guildJoin/joinNotice.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/> 
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>
		
		<div class="container">
<%-- 			<img src="${pageContext.request.contextPath}/resources/image/km_guildJoin/test.jpeg" alt="테스트표"> --%>
		
		<h1>길드원 모집 당분간 중단합니다.</h1>
		<h1>길드 내부 재정비 후 다시 길드원 모집 시작하겠습니다.</h1>
		<h1>궁금하신점은 넥슨플러그 : '고구려곰준이' 로 문의 부탁드립니다.</h1>
		</div>
		
	</body>
</html> 