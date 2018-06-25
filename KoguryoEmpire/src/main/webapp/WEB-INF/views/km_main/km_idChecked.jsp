<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.km.dto.*" %>

<%Object obj = request.getAttribute("vo"); 
MemberVO vo = null;
String result= "NO";
if(obj != null) {
	vo = (MemberVO) obj;
	vo.getMemEmail();
	result = "YES";
	
}
	out.write(result);
%>