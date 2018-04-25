<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_member/list/memberInfo.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<div class="container">
			<table class="table table-bordered">
				<tr>
					<td>No.</td>
					<td>Title.</td>
					<td>Writer.</td>
					<td>Date.</td>
					<td>View.</td>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="km_infoView.do">Member Info Title Test</a></td>
					<td>KoguryoGuild</td>
					<td>2018-04-20 12:00</td>
					<td>50</td>
				</tr>
				<tr>
					<td>2</td>
					<td><a href="km_infoView.do">Member Info Title Test</a></td>
					<td>KoguryoGuild</td>
					<td>2018-04-20 12:00</td>
					<td>50</td>
				</tr>
				<tr>
					<td>3</td>
					<td><a href="km_infoView.do">Member Info Title Test</a></td>
					<td>KoguryoGuild</td>
					<td>2018-04-20 12:00</td>
					<td>50</td>
				</tr>
				<tr>
					<td>4</td>
					<td><a href="km_infoView.do">Member Info Title Test</a></td>
					<td>KoguryoGuild</td>
					<td>2018-04-20 12:00</td>
					<td>50</td>
				</tr>
				<tr>
					<td>5</td>
					<td><a href="km_infoView.do">Member Info Title Test</a></td>
					<td>KoguryoGuild</td>
					<td>2018-04-20 12:00</td> 
					<td>50</td>
				</tr>
			</table>
			<a href="km_infoWrite.do"><button class="btn">글쓰기</button></a>
		</div>
	</body>
</html> 