<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_main/login.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>

		<div class="container">
			<h3>로그인</h3>
			<form>
				<div class="form-group">
					<label for="memberEmail">이메일</label>
					<input type="email" class="form-control" id="memberEmail" name="memberEmail" placeholder="이메일 입력">
				</div>
				<div class="form-group">
					<label for="memberPW">비밀번호</label>
					<input type="password" class="form-control" id="memberPW" name="memberPW" placeholder="비밀번호 입력">
				</div>
				<button type="submit" class="btn">로그인</button>
				<div id="serche">
					<span id="id_pw_serche"><a href="km_idpwSerche.do">아이디/비밀번호 찾기</a></span>
					<span id="member_join"><a href="km_join.do">회원가입</a></span>
				</div>
				<div class="clear"></div>
				<h6>Copyright &copy; 2018 KoguryoEmpire All rights reserved.</h6>
			</form>
		</div>
	</body>
</html> 