<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_main/join.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/script/km_main/join.js" type="text/javascript"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>

		<div class="container">
			<h3>회원가입</h3>
			<form id="joinForm">
				<div class="form-group">
					<input type="email" class="form-control" id="memEmail" name="memEmail" placeholder="이메일 입력">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="memPassword" name="memPassword" placeholder="비밀번호 입력" maxlength="15">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="memPasswordCheck" name="memPasswordCheck" placeholder="비밀번호 확인" maxlength="15">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="memName" name="memName" placeholder="이름 입력" maxlength="4">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="memNickname" name="memNickname" placeholder="닉네임 입력" maxlength="12">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="memBirthday" name="memBirthday" placeholder="생일 입력" maxlength="0">
				</div>
				<button type="submit" class="btn" id="submitBtn">이용약관 동의 및 회원가입</button>
				<div class="clear"></div> 
				<h6>Copyright &copy; 2018 KoguryoEmpire All rights reserved.</h6>
			</form>
		</div>
	</body>
	<script>
	$(function() {
		$("#memBirthday").datepicker({
			changeMonth: true,
	    	changeYear: true,
	    	yearRange: "1970:2002",
	    	dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
	    	monthNamesShort: ["1Mon", "2Mon", "3Mon", "4Mon", "5Mon", "6Mon", "7Mon", "8Mon", "9Mon", "10Mon", "11Mon", "12Mon"]
	    });
	} );
	</script>
</html> 