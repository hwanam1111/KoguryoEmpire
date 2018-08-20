<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<link href="${pageContext.request.contextPath}/resources/css/km_member/write/atMovieWrite.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>

		<div class="container">
			<h3>어택영상</h3>
			<form id="atMovieWriteForm">
				<select class="form-control" name="atmovieThemes" id="atmovieThemes">
					<jsp:include page="/WEB-INF/views/km_common/km_timeattack/mapThemes.jsp"/>
				</select>
				<select class="form-control" name="atmovieMap" id="atmovieMap">
					
				</select>
				<div class="form-group">
				    <input type="text" class="form-control" id="atmovieVideoHidden" name="atmovieVideoHidden" placeholder="유튜브 동영상 링크" value="${atMovieUpdateForm.atmovieVideo}">
				    <span style="margin-left: 10px; position:relative; top:5px;"><a href="km_atMovieYoutube.do" target="_blank">유뷰트 링크 작성법 ⓘ</a></span>  
	  			</div>
	  			<div class="form-group">
					<input type="text" class="form-control" id="atmovieRider" name="atmovieRider" placeholder="주행자 입력" maxlength="40" value="${atMovieUpdateForm.atmovieRider}">
				</div>
	  			<div class="form-group">
					<input type="text" class="form-control" id="atmovieTime" name="atmovieTime" placeholder="시간 입력" maxlength="40" value="${atMovieUpdateForm.atmovieTime}">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="atmovieExplanation" name="atmovieExplanation" placeholder="한줄 설명" maxlength="40" value="${atMovieUpdateForm.atmovieExplanation}">
				</div>
				<input type="hidden" value="${sessionScope.login.memNickname}" name="atmovieNickname">
				<input type="hidden" value="${atMovieUpdateForm.atmovieNumber }" name="atmovieNumber">
				<input type="hidden" class="form-control" id="atmovieVideo" name="atmovieVideo" placeholder="유튜브 동영상 링크  바뀌ㅏ는 부분" >
				<button type="button" class="btn" id="btn">완료</button>
				
				<div class="clear"></div>
				<h6>Copyright &copy; 2018 KoguryoEmpire All rights reserved.</h6>
			</form>
		</div>
	</body>
	
	<script>
	$(function() {
		var putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/noneMap.jsp"/>;
		$('#atmovieMap').html(putMap);
		
		var videoLink1 = $('#atmovieVideoHidden').val();
		
		var cutIndex1 = parseInt(videoLink1.indexOf("embed/"))+6;
		
		var cutVideoId1 = videoLink1.substring(cutIndex1);
		
		$('#atmovieVideoHidden').val("https://www.youtube.com/watch?v="+cutVideoId1); 
		
	})
	
	$('#btn').click(function() {
		
		var videoLink2 = $('#atmovieVideoHidden').val();
		
		var cutIndex2 = parseInt(videoLink2.indexOf("="))+1;
		 
		var cutVideoId2 = videoLink2.substring(cutIndex2);
		
		$('#atmovieVideo').val("https://www.youtube.com/embed/"+cutVideoId2);
		
		
		var state = $('#atmovieThemes option:selected').val();
		if (state == '') {
			alert('테마를 선택해주세요');
			
			return false;
		}
		
		if($('#atmovieVideo').val().length<1){
			alert('영상의 유튜브 링크를 입력하세요');
			$('#atmovieVideo').focus();
			return false;
		} 
		
		if($('#atmovieRider').val().length<1){
			alert('주행자 닉네임을 입력하세요');
			$('#atmovieVideo').focus();
			return false;
		} 
		
		if($('#atmovieTime').val().length<1){
			alert('완주 시간을 입력하세요');
			$('#atmovieTime').focus();
			return false;
		} 
		
		$('#atMovieWriteForm').attr("action","km_atmovieUpdateFormOk.do");
		$('#atMovieWriteForm').attr("method","post");
// 		$('#atMovieWriteForm').attr("enctype","multipart/form-data");
		$('#atMovieWriteForm').submit();
	});
	
	$('#atmovieThemes').change(function() {
		var putMap;
		var state = $('#atmovieThemes option:selected').val();
		if(state == '1920') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/1920Map.jsp"/>;
		}
		else if(state == '놀이공원') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/amusementMap.jsp"/>;
		}
		else if(state == '비치') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/beachMap.jsp"/>;
		}
		else if(state == '브로디') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/brodyMap.jsp"/>;
		}
		else if(state == '공동묘지') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/cemeteryMap.jsp"/>;
		}
		else if(state == '차이나') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/chinaMap.jsp"/>;
		}
		else if(state == '사막') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/desertMap.jsp"/>;
		}
		else if(state == '쥐라기') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/dinosaurMap.jsp"/>;
		}
		else if(state == '팩토리') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/factoryMap.jsp"/>;
		}
		else if(state == '동화') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/fairytaleMap.jsp"/>;
		}
		else if(state == '포레스트') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/forestMap.jsp"/>;
		}
		else if(state == '황금문명') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/goldcivilizationMap.jsp"/>;
		}
		else if(state == '아이스') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/iceMap.jsp"/>;
		}
		else if(state == '대저택') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/mansionMap.jsp"/>;
		}
		else if(state == '메카닉') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/mecanicMap.jsp"/>;
		}
		else if(state == '광산') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/mineMap.jsp"/>;
		}
		else if(state == '문힐시티') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/munhillcityMap.jsp"/>;
		}
		else if(state == '네모') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/nemoMap.jsp"/>;
		}
		else if(state == '님프') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/nimpMap.jsp"/>;
		}
		else if(state == '노르테유') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/northeyuMap.jsp"/>;
		}
		else if(state == '해적') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/pirateMap.jsp"/>;
		}
		else if(state == '빌리지') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/villageMap.jsp"/>;
		}
		else if(state == 'WKC') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/wkcMap.jsp"/>;
		}
		else if(state == '월드') {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/worldMap.jsp"/>;
		}
		else {
			putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/noneMap.jsp"/>;
		}
		$('#atmovieMap').html(putMap);
	});
	</script>
</html> 

