$(function() {
	
	$('#submitBtn').click(function(){
		if($('#joinName').val().length<1){
			alert('이름을 입력하세요');
			$('#joinName').focus();
			return false;
		} 
		
		if($('#joinNickname').val().length<1){
			alert('닉네임을 입력하세요');
			$('#joinNickname').focus();
			return false;
		} 
		
		if($('#joinAge').val().length<1){
			alert('나이를 입력하세요');
			$('#joinAge').focus();
			return false;
		} 
		
		if($('#joinSex').val().length<1){
			alert('성별을 입력하세요');
			$('#joinSex').focus();
			return false;
		} 
		
		if($('#joinRecommend').val().length<1){
			alert('추천인을 입력하세요');
			$('#joinRecommend').focus();
			return false;
		} 
		
		if($('#joinLastguild').val().length<1){
			alert('전 길드를 입력하세요');
			$('#joinLastguild').focus();
			return false;
		} 



		$('#joinForm').attr("action","km_guildJoinOk.do");
		$('#joinForm').attr("method","get");
		$('#joinForm').submit();
	});
	
});