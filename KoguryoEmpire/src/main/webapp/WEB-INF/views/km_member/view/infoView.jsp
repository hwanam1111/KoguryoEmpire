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
					<label for="infoName">이름</label>
					<input type="text" class="form-control" id="infoName" name="infoName" value="${map.infoName}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="infoNickname">닉네임</label>
					<input type="text" class="form-control" id="infoNickname" name="infoNickname" value="${map.infoNickname}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="infoAge">나이</label>
					<input type="Number" class="form-control" id="infoAge" name="infoAge" value="${map.infoAge}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="infoSex">성별</label>
					<input type="text" class="form-control" id="infoSex" name="infoSex" value="${map.infoSex}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="infoRecommend">추천인</label>
					<input type="text" class="form-control" id="infoRecommend" name="infoRecommend" value="${map.infoRecommend}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="infoLastNickname">이전 길드</label>
					<input type="text" class="form-control" id="infoLastguild" name="infoLastguild" value="${map.infoLastguild}" readonly="readonly">
				</div>
				
				<input type="hidden" value="${sessionScope.login.memName }" id="sessionName">
				<input type="hidden" value="${map.infoName}" id="infoName">
				
				<div class="clear"></div>
			</form>
			<div style="float:left; width:100%; display:none; margin:30px 0 40px 0;" id="buttonDiv">
				<a href="km_infoUpdateForm.do?infoNum=${map.infoNum}"><button style="width:50%; float:left; height:25px;">수정하기</button></a>
				<a href="km_infoDelete.do?infoNum=${map.infoNum}"><button style="width:50%; float:right; height:25px;">삭제하기</button></a>
			</div>
			<h6>Copyright &copy; 2018 KoguryoEmpire All rights reserved.</h6>
		</div>
	</body>
	
	<script type="text/javascript"> 
		$(function() {
			var sessionName = $('#sessionName').val();
			var infoName = $('#infoName').val();
			 
			if (sessionName == infoName) {
				$('#buttonDiv').css('display', 'block');
			}
		})
	</script>
</html> 