<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_member/view/atMovieView.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>
		<div class="container">
			<table class="table table-striped">
				<tr>
					<td>작성자 : ${map.atmovieNickname}</td>
					<td>제목 : [${map.atmovieRider}] ${map.atmovieMap} ${map.atmovieTime }</td>
				</tr>
			</table> 
			<div class="content">
			<!-- watch?v= replace embed/-->
			<iframe src="${map.atmovieVideo}"></iframe><br/>
				${map.atmovieExplanation}
			</div>
			
			<input type="hidden" value="${sessionScope.login.memName }" id="sessionName">
			<input type="hidden" value="${map.atmovieNickname}" id="atmovieNickname">
			 
			<div style="float:left; width:100%; display:none; margin:10px 0 80px 0;" id="buttonDiv"> 
				<a href="km_atmovieDelete.do?atmovieNumber=${map.atmovieNumber}"><button style="width:15%; float:right; height:40px;">삭제하기</button></a>
				<a href="km_atmovieUpdateForm.do?atmovieNumber=${map.atmovieNumber}"><button style="width:15%; float:right; height:40px;">수정하기</button></a>
			</div>
<!-- 			<div class="reply"> -->
<!-- 				<div> -->
<!-- 					<p>고구려테스트</p> -->
<!-- 					<p>댓글 1</p> -->
<!-- 					<hr> -->
<!-- 					<p>고구려테스트</p> -->
<!-- 					<p>댓글 2</p> -->
<!-- 					<hr> -->
<!-- 				</div> -->
<!-- 				<form> -->
<!-- 					<div class="form-group"> -->
<!-- 						<input type="text" class="form-control" id="noticeReply" name="noticeReply" placeholder="댓글 입력"> -->
<!-- 						<button type="submit" class="btn btn-primary">등록</button> -->
<!-- 					</div> -->
<!-- 					<div class="form-group"> -->
						
<!-- 					</div> -->
<!-- 				</form> -->
<!-- 			</div> -->
		</div>
	</body>
	
	<script type="text/javascript"> 
		$(function() {
			var sessionName = $('#sessionName').val();
			var atmovieNickname = $('#atmovieNickname').val();
			 
			if (sessionName == atmovieNickname) {
				$('#buttonDiv').css('display', 'block');
			}
		})
	</script>
</html> 