$(function() {
	// 이메일 체크
	$('#memEmail').blur(function() {
		var reg_email = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		if($('#memEmail').val().length>0){
			// 정규식 체크
			if(!reg_email.test($('#memEmail').val())){
				alert('이메일 형식이 맞지 않습니다.');
				$('#memEmail').val("");
				$('#memEmail').focus();
			}else{
				$.ajax({
					url : 'km_idChecked.do',
					type : 'get',
					data : ({ userid : $('[name=memEmail]').val() }),
					dataType : "text", // html / xml / json / jsonp / text
					success : function (data) {
						if($('#memEmail').val().length>6){
							if(jQuery.trim(data) == 'YES') {
								alert('이미 사용중인 이메일입니다.');
								$('#memEmail').val("");
								$('#memEmail').focus();
							}else{
								alert('사용 가능한 이메일입니다.')
							}
						}else{
							
						}
					}, // success end
					error : function() {
						alert("에러발생 - ERROR CODE : 10000");
					}
				});
			}
		}
	});
	
	// ##################################################
	// ##################################################
	
	// 비밀번호 체크
	$('#memPassword').blur(function() {
		if ($('#memPassword').val().length > 0 && $('#memPasswordCheck').val().length > 0 ) {
			if($('#memPassword').val() != $('#memPasswordCheck').val()){
				$('#memPassword').focus();
				$('#memPassword').val("");
				$('#memPasswordCheck').val("");
				alert("비밀번호가 일치하지 않습니다.");
			}else{
	
			}
		}
	});
	$('#memPasswordCheck').blur(function() {
		if ($('#memPassword').val().length > 0 && $('#memPasswordCheck').val().length > 0 ) {
			if($('#memPassword').val() != $('#memPasswordCheck').val()){
				$('#memPassword').focus();
				$('#memPassword').val("");
				$('#memPasswordCheck').val("");
				alert("비밀번호가 일치하지 않습니다.");
			}else{
	
			}
		}
	});
	
	// ##################################################
	// ##################################################
	
	
	$('#submitBtn').click(function(){
		var reg_email = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
		if($('#memEmail').val().length<1){
			alert('이메일을 입력하세요');
			$('#memEmail').focus();
			return false;
		} 

		if(!reg_email.test($('#memEmail').val())){ 
			alert('이메일 주소가 유효하지 않습니다'); 
			return false;
		}
		
		if($('#memPassword').val().length<1){
			alert('비밀번호를 입력하세요');
			return false;
		}
		if($('#memPasswordCheck').val().length<1){
			alert('비밀번호를 입력하세요');
			return false;
		}

		if($('#memName').val().length<1){
			alert('이름을 입력하세요');
			return false;
		}

		if($('#memNickname').val().length<1){
			alert('닉네임을 입력하세요');
			return false;
		}
		
		if($('#memBirthday').val().length<1){
			alert('생일을 입력하세요');
			return false;
		}


		$('#joinForm').attr("action","km_joinOk.do");
		$('#joinForm').attr("method","get");
		$('#joinForm').submit();
	});
	
});