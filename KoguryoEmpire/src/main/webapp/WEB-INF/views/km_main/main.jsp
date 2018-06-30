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
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_main/main.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>

		<section id="main_contents_1">
			<img src="${pageContext.request.contextPath}/resources/image/km_common/main.jpeg" alt="메인이미지">
		</section>
<!-- 		<div class="clear"></div> -->
		<section id="main_contents_2">
			<br/><br/>
			<h3 style="text-align: center">홈페이지 아직 작업중입니다. 회원가입, 길드 가입신청은 가능합니다.</h3> 
			<br/><br/>
			<h4 style="text-align: center">궁금하신점은 넥플 고구려김이준 메신주세요.</h4> 
		</section>
	</body>
</html> 