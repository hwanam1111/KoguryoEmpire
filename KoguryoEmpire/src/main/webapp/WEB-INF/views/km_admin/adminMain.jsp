<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.km.dto.MemberVO"%>
<%
	Object obj = session.getAttribute("login");
	MemberVO mvo = (MemberVO)obj;
%>

<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire - ADMIN PAGE</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_admin/admin.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/script/km_admin/admin.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>

		<div class="container">
			<div id="adminImg">
				<div>
					<img src="${pageContext.request.contextPath}/resources/image/km_admin/info.png" alt="회원 관리" id="memberManager">
					<span>회원 관리</span>
				</div>
				<div>
					<img src="${pageContext.request.contextPath}/resources/image/km_admin/people.png" alt="가입 관리" id="joinManager">
					<span>가입 관리</span>
				</div>
			</div>
			<div style="clear:both"></div>
		</div>
	</body>
</html> 