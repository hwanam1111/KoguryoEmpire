<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.km.dto.*" %>

<%Object obj = request.getAttribute("vo"); 
MemberVO vo = null;
String result= "NO";
System.out.println("들어왔습니다 !!!!!!!!!!");
if(obj != null) {
	vo = (MemberVO) obj;
	vo.getMemEmail();
	result = "YES";
	
}
	out.write(result);
%>