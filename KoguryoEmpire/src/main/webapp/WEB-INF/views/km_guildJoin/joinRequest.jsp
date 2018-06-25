<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_guildJoin/joinRequest.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/script/km_join/join.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>

		<div class="container">
			<h3>가입신청</h3>
			<form id="joinForm">
				<div class="form-group">
					<input type="text" class="form-control" id="joinName" name="joinName" placeholder="이름 입력" maxlength="4">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="joinNickname" name="joinNickname" placeholder="닉네임 입력" maxlength="12">
				</div>
				<div class="form-group">
					<input type="Number" class="form-control" id="joinAge" name="joinAge" placeholder="나이 입력" maxlength="2">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="joinSex" name="joinSex" placeholder="성별 입력" maxlength="2">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="joinRecommend" name="joinRecommend" placeholder="추천인 입력" maxlength="12">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="joinLastguild" name="joinLastguild" placeholder="전 길드 입력" maxlength="20">
				</div>
				<input type="hidden" value="테스트 대기" name="joinStatus" readonly="readonly">
				<input type="button" class="btn" id="submitBtn" value="가입 신청">
				
				<div class="clear"></div>
				<h6>Copyright &copy; 2018 KoguryoEmpire All rights reserved.</h6>
			</form>
		</div>
	</body>
</html> 