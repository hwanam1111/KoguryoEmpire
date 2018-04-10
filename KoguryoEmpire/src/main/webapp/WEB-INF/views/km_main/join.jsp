<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_main/join.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>

		<div class="container">
			<h3>회원가입</h3>
			<form action="joinFormOk.do">
				<div class="form-group">
					<input type="email" class="form-control" id="memberEmail" name="memberEmail" placeholder="이메일 입력">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="memberPW" name="memberPW" placeholder="비밀번호 입력">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="memberPWCheck" name="memberPWCheck" placeholder="비밀번호  확인">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="memberName" name="memberName" placeholder="이름 입력" maxlength="4">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="memberNickName" name="memberNickName" placeholder="닉네임 입력" maxlength="12">
				</div>
				<button type="submit" class="btn">이용약관 동의 및 회원가입</button>
				<div class="clear"></div> 
				<h6>Copyright &copy; 2018 KoguryoEmpire All rights reserved.</h6>
			</form>
		</div>
	</body>
</html> 