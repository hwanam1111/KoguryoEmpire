<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.km.dto.*"%>
<%
	Object obj = session.getAttribute("login");
	MemberVO mvo = (MemberVO)obj;
%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_member/view/noticeView.css" rel="stylesheet" type="text/css">
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
					<td>제목 : ${map.noticeTitle}</td>
					<td>작성자 : ${map.noticeNickname}</td>
				</tr>
			</table>
			<div class="content">
				${map.noticeContent}
			</div>
			<div style="float:right; display:none;" id="buttonDiv">
				<a href="km_noticeUpdateForm.do?noticeNum=${map.noticeNum}"><button>수정하기</button></a>
				<a href="km_noticeDelete.do?noticeNum=${map.noticeNum}"><button>삭제하기</button></a>
			</div>
		</div>
		<input type="hidden" value="${sessionScope.login.memNickname }" id="sessionNickname">
		<input type="hidden" value="${map.noticeNickname}" id="noticeNickname">
	</body>
	<script type="text/javascript">
		$(function() {
			var sessionNickname = $('#sessionNickname').val();
			var noticeNickname = $('#noticeNickname').val();
			 
			if (sessionNickname == noticeNickname) {
				$('#buttonDiv').css('display', 'block');
			}
		})
	</script>
</html> 