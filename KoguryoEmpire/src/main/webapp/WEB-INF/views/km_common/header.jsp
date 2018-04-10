<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header>
	<nav>
		<a href="km_main.do"><img src="${pageContext.request.contextPath}/resources/image/km_common/logo.png" alt="로고"></a>
		<ul>
			<li>
				길드맴버
				<ul>
					<li><a href="km_memberNotice.do">공지사항</a></li>
					<li><a href="km_memberInfo.do">길원정보</a></li>
					<li><a href="km_memberFree.do">자유수다</a></li>
					<li><a href="km_attackMovie.do">어택영상</a></li>
					<li><a href="km_attackPhoto.do">어택스샷</a></li>
					<li><a href="km_memberPhoto.do">정모사진</a></li>
				</ul>
			</li>
			<li>
				게스트
				<ul>
					<li><a href="km_guildPublic.do">길드홍보</a></li>
					<li><a href="km_leaguePublic.do">리그홍보</a></li>
					<li><a href="km_guestPhoto.do">손님사진</a></li>
					<li><a href="km_guestFree">손님수다</a></li>
				</ul>
			</li>
			<li>
				가입공지
				<ul>
					<li><a href="km_joinNotice.do">가입공지</a></li>
					<li><a href="km_joinTest.do">테스트표</a></li>
					<li><a href="km_joinRecommend.do">추천맴버</a></li>
					<li><a href="km_joinCheck.do">가입신청</a></li>
				</ul>
			</li>
			<li><a href="km_login.do">로그인</a></li>
			<li><a href="km_join.do">회원가입</a></li>
		</ul>
	</nav>
</header>