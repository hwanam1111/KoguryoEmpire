<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	function joinCheck() {
		alert('로그인 이후 가입신청이 가능합니다.');
	}
</script>
<header>
	<nav>
		<a href="km_main.do"><img src="${pageContext.request.contextPath}/resources/image/km_common/logo.png" alt="로고"></a>
		<ul>
			<li>
				길드맴버
				<ul>
					<li><a href="km_noticeList.do">공지사항</a></li>
					<li><a href="km_infoList.do">자기소개</a></li>
					<li><a href="km_freeList.do">자유수다</a></li>
					<li><a href="km_atPhotoList.do">어택스샷</a></li>
					<li><a href="km_mbPhotoList.do">정모사진</a></li>
				</ul>
			</li>
			<li><a href="km_atMovieList.do">어택영상</a></li>
			<!-- 게스트는 나중에 보안문제 해결되면 처리 <li>
				게스트
				<ul>
					<li><a href="km_leaguePublic.do">리그홍보</a></li>
					<li><a href="km_guestFree">손님수다</a></li>
				</ul>
			</li>  -->
			<li>
				가입공지
				<ul>
					<li><a href="km_joinNotice.do">가입공지</a></li>
					<li><a href="https://docs.google.com/spreadsheets/d/10gmeU-VcUX6j3bN7ZTPpBPFAmIzovYE7oDCm9xe2dAw/edit?usp=sharing">추천참고</a></li>
					<li><a onclick="joinCheck();">가입신청</a></li>
				</ul>
			</li>
			<li><a href="km_login.do">로그인</a></li>
			<li><a href="km_join.do">회원가입</a></li>
		</ul>
	</nav>
</header>
<div style="clear:both"></div>