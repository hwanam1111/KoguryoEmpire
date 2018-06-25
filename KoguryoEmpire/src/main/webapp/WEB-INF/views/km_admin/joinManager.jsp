<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.km.dto.MemberVO"%>
<%@page import="com.km.dto.JoinVO"%>
<%
	Object obj = session.getAttribute("login");
	MemberVO mvo = (MemberVO)obj;
%>

<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire - ADMIN PAGE</title>
  		<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	  	<link href="${pageContext.request.contextPath}/resources/css/km_admin/material-dashboard.css?v=2.1.0" rel="stylesheet"/>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	</head>
	<body class="">
  	<div class="wrapper">
	    <div class="sidebar" data-color="purple" data-background-color="white">
	    	<div class="logo">
		        <a class="simple-text logo-normal">
		          Koguryo Empire
		        </a>
	      	</div>
	      	<div class="sidebar-wrapper">
		        <ul class="nav">
		        	<li class="nav-item">
		            	<a class="nav-link" href="km_memberManager.do">
		              		<i class="material-icons">person</i>
		              		<p>User Profile</p>
		            	</a>
		          	</li>
		          	<li class="nav-item active">
		      	  	 	<a class="nav-link" href="km_joinManager.do">
		          			<i class="material-icons">content_paste</i>
		          			<p>Join List</p>
		          		</a>
		      	  	</li>
		        </ul>
	    	</div>
	    </div>
	    <div class="main-panel">
	    	<div class="content">
	        	<div class="container-fluid">
	            	<div class="row">
	            		<div class="col-md-12">
	              			<div class="card">
	                			<div class="card-header card-header-primary">
	                  				<h4 class="card-title ">가입 관리</h4>
	                  				<p class="card-category"></p>
	                			</div>
	                			<div class="card-body">
				                  	<div class="table-responsive">
					                    <table class="table">
					                    	<thead class="text-primary">
						                        <th>순서</th>
						                        <th>이름</th>
					                        	<th>닉네임</th>
						                        <th>나이</th>
						                        <th>성별</th>
						                        <th>추천인</th>
						                        <th>이전길드</th>
						                        <th>가입신청날짜</th>
						                        <th>현재상태</th>
						                        <th>상태수정</th>
						                        <th>재테스트일정</th>
						                        <th>수정완료</th>
						                    </thead>
						                    <tbody>
						                    	<c:forEach items="${joinList}" var="join">
							                        <tr>
							                        	<td>${join.joinNum}</td>
							                        	<td>${join.joinName}</td>
									                    <td>${join.joinNickname}</td>
									                    <td>${join.joinAge}</td>
									                    <td>${join.joinSex}</td>
									                    <td>${join.joinRecommend}</td>
									                    <td>${join.joinLastguild}</td>
									                    <td>${join.joinDate}</td> 
									                    <td>${join.joinStatus}</td>
									                    <form action="km_testUpdate.do">
										                    <td>
										                    	<select name="joinStatus">
										                    		<option value="테스트대기">테스트 대기</option>
										                    		<option value="테스트합격">테스트 합격</option>
										                    		<option value="재테스트">재 테스트</option>
										                    		<option value="가입포기">가입 포기</option>
										                    	</select>
										                    	<div>
										                    		<input type="hidden" value="${join.joinNum}" name="joinNum">
										                    	</div>
									                    	</td>
									                    	<td><input type="text" value="${join.joinRetestday}" maxlength="0" id="joinRetestday" name="joinRetestday"></td>
									                    	<td><button type="submit">수정완료</button></td>
									                    </form>
							                        </tr>
						                        </c:forEach>
					                    	</tbody>
					                  	</table>
				                	</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</body>
	<script>
	$(function() {
		$("#joinRetestday").datepicker({
			changeMonth: true,
	    	changeYear: true,
	    	yearRange: "1970:2002",
	    	dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
	    	monthNamesShort: ["1Mon", "2Mon", "3Mon", "4Mon", "5Mon", "6Mon", "7Mon", "8Mon", "9Mon", "10Mon", "11Mon", "12Mon"]
	    });
	} );
	</script>
</html> 
