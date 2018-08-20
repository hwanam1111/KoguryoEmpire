<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_member/list/attackMovie.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>
		<div class="container">
			<table class="table table-bordered">
				<tr>
					<td>No.</td>
					<td>Title.</td>
					<td>Writer.</td>
					<td>Date.</td>
				</tr>
				<c:forEach items="${selectAttackMovie}" var="selectAttackMovie">
				<input type="hidden" id="lastNum" value="${selectAttackMovie.atmovieNumber}">
				<tr>
					<td>${selectAttackMovie.atmovieNumber}</td>
					<td><a href="km_atMovieView.do?atmovieNumber=${selectAttackMovie.atmovieNumber}">[${selectAttackMovie.atmovieRider}] ${selectAttackMovie.atmovieMap} ${selectAttackMovie.atmovieTime }</a></td>
					<td>${selectAttackMovie.atmovieNickname}</td>
					<td><input type="text" value="${selectAttackMovie.atmovieWritedate }" class="${selectAttackMovie.atmovieNumber}" style="border:none;" readonly="readonly"></td>
				</tr>
				</c:forEach>
			</table>
			<a href="km_atMovieWrite.do"><button class="btn">글쓰기</button></a>
		</div>
	</body>
	
	<script>
	$(function() {
		var month = "";
		var day = "";
		
		for (var i=1; i<=parseInt($('#lastNum').val()); i++) {
			if ($('.'+i).val() != undefined && $('.'+i).val().length > 15) {

				if ($('.'+i).val().substring(0,3) == 'Mon') {
					day = "월요일";
				}
				else if ($('.'+i).val().substring(0,3) == 'Tue') {
					day = "화요일";
				}
				else if ($('.'+i).val().substring(0,3) == 'Wed') {
					day = "수요일";
				}
				else if ($('.'+i).val().substring(0,3) == 'Thu') {
					day = "목요일";
				}
				else if ($('.'+i).val().substring(0,3) == 'Fri') {
					day = "금요일";
				}
				else if ($('.'+i).val().substring(0,3) == 'Sat') {
					day = "토요일";
				}
				else if ($('.'+i).val().substring(0,3) == 'Sun') {
					day = "일요일";
				}
				
				
				if ($('.'+i).val().substring(4,7) == 'Jan') {
					month = "1월";
				}
				else if ($('.'+i).val().substring(4,7) == 'Feb') {
					month = "2월";
				}
				else if ($('.'+i).val().substring(4,7) == 'Mar') {
					month = "3월";
				}
				else if ($('.'+i).val().substring(4,7) == 'Apr') {
					month = "4월";
				}
				else if ($('.'+i).val().substring(4,7) == 'May') {
					month = "5월";
				}
				else if ($('.'+i).val().substring(4,7) == 'Jun') {
					month = "6월";
				}
				else if ($('.'+i).val().substring(4,7) == 'Jul') {
					month = "7월";
				}
				else if ($('.'+i).val().substring(4,7) == 'Aug') {
					month = "8월";
				}
				else if ($('.'+i).val().substring(4,7) == 'Sep') {
					month = "9월";
				}
				else if ($('.'+i).val().substring(4,7) == 'Oct') {
					month = "10월";
				}
				else if ($('.'+i).val().substring(4,7) == 'Nov') {
					month = "11월";
				}
				else if ($('.'+i).val().substring(4,7) == 'Dec') {
					month = "12월";
				}
				
				$('.'+i).val(month + ' ' + $('.'+i).val().substring(8,10) + '일 ' + day);
			}
		}
		
	} );
	</script>
</html> 