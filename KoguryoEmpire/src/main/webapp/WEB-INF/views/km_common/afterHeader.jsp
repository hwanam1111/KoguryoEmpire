<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.km.dto.MemberVO"%>
<%Object obj = session.getAttribute("login"); 
	MemberVO vo = null;
	if(obj!=null)vo = (MemberVO)obj;
%>
<%if(vo.getMemClass().equals("손님")) { %>
	<script type="text/javascript">
		$(function() {
			$('#guildMember').css('display', 'none');
		})
	</script>
<% } else if(vo.getMemClass().equals("길드원")) { %>
	<script type="text/javascript">
		$(function() {
			$('#joinCheck').css('display', 'none');
		})
	</script>
<% } else if(vo.getMemClass().equals("관리자")) { %>
	<script type="text/javascript">
		$(function() {
			$('#adminPage').css('display', 'block');
			$('#joinCheck').css('display', 'none');
		})
	</script>
<% } %>

<script type="text/javascript">
	function logout(){
 		 var con = confirm("로그아웃을 하시겠습니까?");
		 if(con == true){
			location.href="km_logout.do";
		 }
	}
</script>
<header>
	<nav>
		<a href="km_main.do"><img src="${pageContext.request.contextPath}/resources/image/km_common/logo.png" alt="로고"></a>
		<ul>
			<li id="guildMember">
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
					<li><a href="km_joinTest.do">테스트표</a></li>
					<li><a href="km_joinRecommend.do">추천맴버</a></li>
					<li id="joinCheck"><a href="km_joinCheck.do">가입신청</a></li>
				</ul>
			</li>
			<li id="adminPage" style="display:none;"><a href="km_adminPage">관리자</a></li>
			<li><a onclick="logout();">로그아웃</a></li>
		</ul>
	</nav>
</header>
<div style="clear:both"></div>