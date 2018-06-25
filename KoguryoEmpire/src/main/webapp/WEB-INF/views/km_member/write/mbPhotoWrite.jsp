<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<link href="${pageContext.request.contextPath}/resources/css/km_member/write/mbPhotoWrite.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/info.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/main.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/widgEditor.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/script/km_common/widgEditor.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>
		<div id="content">
			<form action=""> <!--  onsubmit="alert('Your submitted HTML was:\n\n' + document.getElementById('noise').value); return false;" -->
				<div class="form-group">
					<input type="text" class="form-control" id="mbphotoTitle" name="mbphotoTitle" placeholder="제목 입력">
				</div>
				<fieldset>
					<textarea id="noise" name="mbphotoContent" class="widgEditor nothing"></textarea>
				</fieldset>
				<fieldset class="submit">
					<button type="submit" class="btn">확인</button>
				</fieldset>
			</form>
		</div>
	</body>
</html> 