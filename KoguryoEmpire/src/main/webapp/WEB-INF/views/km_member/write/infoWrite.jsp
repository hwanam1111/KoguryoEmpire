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
					<input type="text" class="form-control" id="introduceName" name="introduceName" placeholder="이름 입력" maxlength="4">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="introduceNickname" name="introduceNickname" placeholder="닉네임 입력" maxlength="12">
				</div>
				<div class="form-group">
					<input type="Number" class="form-control" id="introduceAge" name="introduceAge" placeholder="나이 입력" maxlength="2">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="introduceSex" name="introduceSex" placeholder="성별 입력" maxlength="2">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="introduceRecommend" name="introduceRecommend" placeholder="추천인 입력" maxlength="12">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="introduceGuild" name="introduceGuild" placeholder="전 닉네임 입력" maxlength="20">
				</div>
				<button type="submit" class="btn">완료</button>
				
				<div class="clear"></div>
				<h6>Copyright &copy; 2018 KoguryoEmpire All rights reserved.</h6>
			</form>
		</div>
	</body>
</html> 

