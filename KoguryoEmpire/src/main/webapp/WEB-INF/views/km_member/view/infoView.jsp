<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_member/view/infoView.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body> 
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>

		<div class="container">
			<h3>자기소개</h3>
			<form>
				<div class="form-group">
					<label for="introduceName">이름</label>
					<input type="text" class="form-control" id="introduceName" name="introduceName" value="김이준" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="introduceNickname">닉네임</label>
					<input type="text" class="form-control" id="introduceNickname" name="introduceNickname" value="고구려김이준" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="introduceAge">나이</label>
					<input type="Number" class="form-control" id="introduceAge" name="introduceAge" value="21" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="introduceSex">성별</label>
					<input type="text" class="form-control" id="introduceSex" name="introduceSex" value="남" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="introduceRecommend">추천인</label>
					<input type="text" class="form-control" id="introduceRecommend" name="introduceRecommend" value="고구려이선호" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="introduceLastNickname">이전 닉네임</label>
					<input type="text" class="form-control" id="introduceLastNickname" name="introduceLastNickname" value="고구려곰준몬" readonly="readonly">
				</div>
				
				<div class="clear"></div>
				<h6>Copyright &copy; 2018 KoguryoEmpire All rights reserved.</h6>
			</form>
		</div>
	</body>
</html> 