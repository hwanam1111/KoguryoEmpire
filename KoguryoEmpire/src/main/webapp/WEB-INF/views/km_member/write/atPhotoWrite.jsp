<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_member/write/atPhotoWrite.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>

		<div class="container">
			<h3>어택스샷</h3>
			<form id="atPhotoWriteForm">
				<select class="form-control" name="atphotoThemes" id="atphotoThemes">
					<jsp:include page="/WEB-INF/views/km_common/km_timeattack/mapThemes.jsp"/>
				</select>
				<select class="form-control" name="atphotoMap" id="atphotoMap">
					
				</select>
				<div class="form-group">
				    <label for="atphotoPhoto">사진 업로드</label>
    				<input type="file" id="atphotoPhoto">
	  			</div>
	  			<div class="form-group">
					<input type="text" class="form-control" id="atphotoRider" name="atphotoRider" placeholder="주행자 입력" maxlength="40">
				</div>
	  			<div class="form-group">
					<input type="text" class="form-control" id="atphotoTime" name="atphotoTime" placeholder="시간 입력" maxlength="40">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="atphotoExplanation" name="atphotoExplanation" placeholder="한줄 설명" maxlength="40">
				</div>
				<button type="button" class="btn" id="btn">완료</button>
				
				<div class="clear"></div>
				<h6>Copyright &copy; 2018 KoguryoEmpire All rights reserved.</h6>
			</form>
		</div>
	</body>
	
	<script>
	$(function() {
		var putMap = <jsp:include page="/WEB-INF/views/km_common/km_timeattack/noneMap.jsp"/>;
		$('#atphotoMap').html(putMap);
	})
	
	$('#btn').click(function() {
		var state = $('#atphotoThemes option:selected').val();
		if (state == '') {
			alert('테마를 선택해주세요');
			
			return false;
		}
		
// 		$('#atMovieWriteForm').attr("action","~~~.do");
// 		$('#atMovieWriteForm').attr("method","post");
// 		$('#atMovieWriteForm').attr("enctype","multipart/form-data");
		$('#atPhotoWriteForm').submit();
	});
	
	$('#atphotoThemes').change(function() {
		var putMap;
		var state = $('#atphotoThemes option:selected').val();
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
		$('#atphotoMap').html(putMap);
	});
	</script>
</html> 

