<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_guildJoin/joinRecommend.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>
		
	    <!-- ########################################## -->
	    <!-- 명단 수정 할 때 Ctrl+F 로 닉네임 or 이름 검색 -->
	    <!-- ########################################## -->
            
        <table class="table table-condensed">
            <!-- ########################################## -->
            <!-- 각 메뉴 구분 -->
            <!-- ########################################## -->
            <tr id="topMenu">
                <td>직위</td>
                <td>이름</td>
                <td>나이</td>
                <td>닉네임</td>
                <td>부계정</td>
                <td>추천불가사유</td>
            </tr>
            <!-- ########################################## -->
            <!-- 마스터 & 운영진 -->
            <!-- ########################################## -->
            <tr class="noCard">
                <td>마스터계정</td>
                <td></td>
                <td></td>
                <td>KoguryoGuild</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>마스터</td>
                <td>이선호</td>
                <td>29</td>
                <td>고구려이선호</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>운영진</td>
                <td>김재무</td>
                <td>25</td>
                <td>고구려의참치</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>운영진</td>
                <td>김이준</td>
                <td>21</td>
                <td>고구려김이준</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>웹마스터</td>
                <td>박동현</td>
                <td>23</td>
                <td>KoguryoPhoto</td>
                <td></td>
                <td></td>
            </tr>
            <!-- ########################################## -->
            <!-- 성인 길드원 -->
            <!-- ########################################## -->
            <tr>
                <td>길드원</td>
                <td>장익환</td>
                <td>35</td>
                <td>고구려의머리</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>한광선</td>
                <td>34</td>
                <td>고구려의괭이</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>안병은</td>
                <td>34</td>
                <td>고구려의이츠</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>김도형</td>
                <td>31</td>
                <td>고구려의주몽</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>유원호</td>
                <td>31</td>
                <td>고구려의데빌</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>이지혜</td>
                <td>30</td>
                <td>고구려이지혜</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>정종민</td>
                <td>27</td>
                <td>고구려의팬티</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>이찬영</td> 
                <td>26</td>
                <td>KoguryoCyLee</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>김동철</td>
                <td>24</td>
                <td>고구려김동철</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>이준성</td>
                <td>22</td>
                <td>고구려의속도</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>김희창</td>
                <td>22</td>
                <td>고구려창모띠</td>
                <td></td>
                <td></td>
            </tr>
            <tr class ="noCard">
                <td>길드원</td>
                <td>지현태</td>
                <td>21</td>
                <td>고구려지빵태</td>
                <td></td>
                <td>추천 받은 길드원 탈퇴</td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>함유민</td>
                <td>21</td>
                <td>고구려함유민</td>
                <td class="second">고구려함유밍</td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>박병선</td>
                <td>21</td>
                <td>고구려박병선</td>
                <td></td>
                <td></td>
            </tr>
            <tr class ="noCard">
                <td>길드원</td>
                <td>전규환</td>
                <td>20</td>
                <td>고구려전규환</td>
                <td></td>
                <td>추천권 사용</td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>남현재</td>
                <td>20</td>
                <td>고구려남현재</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>김현진</td>
                <td>20</td>
                <td>고구려김현진</td>
                <td></td>
                <td></td>
            </tr>
	        <tr class ="noCard">
                <td>길드원</td>
                <td>김홍균</td>
                <td>20</td>
                <td>Koguryo169</td>
                <td></td>
                <td>가입 3개월 미만</td>
            </tr>
            <tr class ="noCard">
                <td>길드원</td>
                <td>장남호</td>
                <td>20</td>
                <td>고구려장모띠</td>
                <td></td>
                <td>가입 3개월 미만</td>
            </tr>
            <!-- ########################################## -->
            <!-- 미성년자 길드원 -->
            <!-- ########################################## -->
            <tr class ="noCard">
                <td>길드원</td>
                <td>박기성</td>
                <td>19</td>
                <td>고구려김봉수</td>
                <td></td>
                <td>추천권 사용</td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>김도현</td>
                <td>19</td>
                <td>고구려의도현</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>강명승</td>
                <td>19</td>
                <td>고구려강명승</td>
                <td></td>
                <td></td>
            </tr>
            <tr class="noCard">
                <td>길드원</td>
                <td>김태희</td>
                <td>19</td>
                <td>고구려츤달이</td>
                <td class="second">고구려의댕이</td>
                <td>추천 받은 길드원 탈퇴</td>
            </tr>
            <tr class="noCard">
                <td>길드원</td>
                <td>서지훈</td>
                <td>19</td>
                <td>고구려요미왈</td>
                <td></td>
                <td>가입 6개월 미만</td>
            </tr>
            <tr class="noCard">
                <td>길드원</td>
                <td>김응태</td>
                <td>19</td>
                <td>고구려김응태</td>
                <td></td>
                <td>가입 6개월 미만</td>
            </tr>
            <tr class="noCard">
                <td>길드원</td>
                <td>심지훈</td>
                <td>19</td>
                <td>고구려심지훈</td>
                <td></td>
                <td>가입 6개월 미만</td>
            </tr>
            <tr>
                <td>길드원</td>
                <td>김동현</td>
                <td>18</td>
                <td>고구려의참새</td>
                <td></td>
                <td></td>
            </tr>
            <!-- ########################################## -->
            <!-- 군인 길드원 -->
            <!-- ########################################## -->
            <tr class="military">
                <td>군인</td>
                <td>김도영</td>
                <td>23</td>
                <td>KoguryoLibra</td>
                <td></td>
                <td></td>
            </tr>
            <tr class="military">
                <td>군인</td>
                <td>주성빈</td>
                <td>23</td>
                <td>KoguryoJsb</td>
                <td></td>
                <td></td>
            </tr>
            <tr class="military">
                <td>군인</td>
                <td>정봉궐</td>
                <td>22</td>
                <td>고구려의진OI</td>
                <td></td>
                <td></td>
            </tr>
            <tr class="military">
                <td>군인</td>
                <td>민준석</td>
                <td>22</td>
                <td>고구려의거봉</td>
                <td></td>
                <td></td>
            </tr>
            <tr class="military">
                <td>군인</td>
                <td>박재우</td>
                <td>22</td>
                <td>고구려태권도</td>
                <td></td>
                <td></td>
            </tr>
        </table>
		
	</body>
</html> 