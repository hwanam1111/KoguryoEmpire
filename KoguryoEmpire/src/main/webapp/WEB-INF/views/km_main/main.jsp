<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>

		<section id="main_contents_1">
			<img src="${pageContext.request.contextPath}/resources/image/km_common/main.jpeg" alt="메인이미지">
		</section>
<!-- 		<div class="clear"></div> -->
		<section id="main_contents_2">
			<table>
		        <thead>
		            <tr>
		                <th>아이디</th>
		                <th>비밀번호</th>
		                <th>이름</th>
		            </tr>
		        </thead>
		        <tbody>
		            <c:forEach items="${memberList}" var="member">
		                <tr>
		                    <td>${member.memEmail}</td>
		                    <td>${member.memPassword}</td>
		                    <td>${member.memName}</td> 
		                </tr>
		            </c:forEach>
		        </tbody>
		    </table>


		</section>
	</body>
</html> 