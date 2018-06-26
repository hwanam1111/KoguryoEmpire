<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_main/idSearch.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>

		<div class="container">
			<h3>아이디 찾기</h3>
			<form action="km_idSearchChecked.do">
				<div class="form-group">
					<input type="text" class="form-control" id="memName" name="memName" placeholder="이름 입력" maxlength="4">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="memNickname" name="memNickname" placeholder="닉네임 입력" maxlength="12">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="memNextpassword" name="memNextpassword" placeholder="2차 비밀번호 입력" maxlength="15">
				</div>
				<button type="submit" class="btn" id="submitBtn">아이디 찾기</button>
				<div class="clear"></div> 
				<h6>Copyright &copy; 2018 KoguryoEmpire All rights reserved.</h6>
			</form>
		</div>
	</body>
	<script>
	
	</script>
</html> 