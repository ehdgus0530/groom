function join(){
	var fm = document.querySelector('#joinf');
	if(fm.user_name.value==''){
		alert("이름을 입력하세요");
		fm.user_name.focus();
	}else if(fm.user_nick.value==''){
		alert("닉네임을 입력하세요");
		fm.user_nick.focus();
	}else if(fm.user_birth.value==''){
		alert("생년월일을 입력하세요");
		fm.user_birth.focus();
	}else if(fm.user_id.value==''){
		alert("아이디를 입력하세요");
		fm.user_id.focus();
	}else if(fm.user_pw.value==''){
		alert("비밀번호를 입력하세요");
		fm.user_pw.focus();
	}else if(fm.user_phone.value==''){
		alert("연락처를 입력하세요");
		fm.user_phone.focus();
	}else if(fm.user_email.value==''){
		alert("이메일을 입력하세요");
		fm.user_email.focus();
	}else{
		fm.submit();
	}
}

function login(){
	var fm = document.querySelector('#loginf');
	if(fm.user_id.value==''){
		alert("아이디를 입력하세요");
		fm.user_id.focus();
	}else if(fm.user_pw.value==''){
		alert("비밀번호를 입력하세요");
		fm.user_pw.focus();
	}else{
		fm.submit();
	}
}

function cancel(){
	history.back();
}

function join_move() {
	location.href='join.jsp';
}