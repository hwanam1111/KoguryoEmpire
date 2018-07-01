<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
if("${message}" == "성공"){
	alert("게시글 삭제에 성공하였습니다.");	
	location.href="km_infoList.do"
}else{
	alert("게시글 삭제에 실패하였습니다. - ERROR-CODE : 12302");
	location.href="km_infoList.do";
}
</script>