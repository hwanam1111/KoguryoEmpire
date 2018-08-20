<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_guildJoin/joinCheck.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>
		
		<div class="container">
			<div>
				<p>
					길드 가입 신청하시기 전에, 길드 가입 공지사항과 <br><br> 테스트표를 꼭 확인해 주시고, <br><br> 
					확인을 하지 않아 생기는 불이익은 모두 <br><br>  가입 신청자에게 있으니 <br><br> 필히 공지사항을 확인해주세요.
				</p>
				<a href="km_joinNotice.do"><button class="btn">가입 공지 및 테스트표</button></a><br><br>
				<a href="km_joinNotice.do"><button class="btn">가입 신청</button></a>
			</div>
		</div>
		
	</body>
</html> 