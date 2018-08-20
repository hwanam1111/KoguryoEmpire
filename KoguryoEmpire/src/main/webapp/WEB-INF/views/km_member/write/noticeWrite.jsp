<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.km.dto.MemberVO"%>
<%
	Object obj = session.getAttribute("login");
	MemberVO mvo = (MemberVO)obj;
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
		<meta name="author" content="The Man in Blue" />
		<meta name="robots" content="all" />
		<meta name="MSSmartTagsPreventParsing" content="true" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_member/write/noticeWrite.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/info.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/main.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
		<script>
			$(function() {
				
				$('#submitBtn').click(function() {
					var data = CKEDITOR.instances.contents.getData();
					
					$('#noticeContent').val(data);
					
					$('#noticeWriteOk').attr("action", "km_noticeWriteOk.do");
					$('#noticeWriteOk').attr("method", "post");
 					$('#noticeWriteOk').submit();
				})
				
			})
			
		</script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>
		<div id="content">
			<form id="noticeWriteOk"> <!--  action="km_noticeWriteOk.do"-->
				<div class="form-group">
					<input type="text" class="form-control" id="noticeTitle" name="noticeTitle" placeholder="제목 입력">
				</div>
				
				<textarea name="contents" id="contents" rows="50" cols="10" class="ckeditor"></textarea>
				
				<input type="hidden" name="noticeContent" id="noticeContent">
				<input type="hidden" value="${sessionScope.login.memNickname}" name="noticeNickname">
				<fieldset class="submit">
					<button type="button" class="btn" id="submitBtn">확인</button>
				</fieldset>
				
			</form>
		</div>
	</body>
</html> 