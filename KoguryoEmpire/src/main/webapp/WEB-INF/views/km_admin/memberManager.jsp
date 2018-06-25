<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.km.dto.MemberVO"%>
<%
	Object obj = session.getAttribute("login");
	MemberVO mvo = (MemberVO)obj;
%>

<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire - ADMIN PAGE</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
  		<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	  	<link href="${pageContext.request.contextPath}/resources/css/km_admin/material-dashboard.css?v=2.1.0" rel="stylesheet"/>
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
		        	<li class="nav-item active">
		            	<a class="nav-link" href="km_memberManager.do">
		              		<i class="material-icons">person</i>
		              		<p>User Profile</p>
		            	</a>
		          	</li>
		          	<li class="nav-item">
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
	                  				<h4 class="card-title ">맴버 관리</h4>
	                  				<p class="card-category"></p>
	                			</div>
	                			<div class="card-body">
				                  	<div class="table-responsive">
					                    <table class="table">
					                    	<thead class="text-primary">
						                        <th>이메일</th>
					                        	<th>이름</th>
						                        <th>닉네임</th>
						                        <th>생일</th>
						                        <th>회원등급</th>
						                        <th>가입일</th>
						                        <th>등급수정</th>
						                        <th>수정완료</th>
						                    </thead>
						                    <tbody>
						                    	<c:forEach items="${memberList}" var="member">
							                        <tr>
							                        	<td>${member.memEmail}</td>
									                    <td>${member.memName}</td>
									                    <td>${member.memNickname}</td> 
									                    <td>${member.memBirthday}</td> 
									                    <td>${member.memClass}</td> 
									                    <td>${member.memDate}</td>
									                    <form action="km_classUpdate.do">
										                    <td>
										                    	<select name="memClass">
										                    		<option value="관리자">관리자</option>
										                    		<option value="길드원">길드원</option>
										                    		<option value="손님">손님</option>
										                    	</select>
										                    	<div>
										                    		<input type="hidden" value="${member.memEmail}" name="memEmail">
										                    	</div>
									                    	</td>
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
</html> 
