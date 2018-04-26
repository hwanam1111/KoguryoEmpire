<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_member/write/infoWrite.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>

		<div class="container">
			<h3>자기소개</h3>
			<form>
				<div class="form-group">
					<input type="text" class="form-control" id="infoName" name="infoName" placeholder="이름 입력" maxlength="4">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="infoNickname" name="infoNickname" placeholder="닉네임 입력" maxlength="12"> 
				</div>
				<div class="form-group">
					<input type="Number" class="form-control" id="infoAge" name="infoAge" placeholder="나이 입력" maxlength="2">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="infoSex" name="infoSex" placeholder="성별 입력" maxlength="2">
				</div>
				<div class="form-group">
					<input type="tel" class="form-control" id="infoTel" name="infoTel" placeholder="전화번호 입력" maxlength="13">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="infoRecommend" name="infoRecommend" placeholder="추천인 입력" maxlength="12">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="infoLastguild" name="infoLastguild" placeholder="전 닉네임 입력" maxlength="20">
				</div>
				<button type="submit" class="btn">완료</button>
				
				<div class="clear"></div>
				<h6>Copyright &copy; 2018 KoguryoEmpire All rights reserved.</h6>
			</form>
		</div>
	</body>
</html> 

