function qa_write() {
	location.href="qa.do?kind=write";
}

function saves() {
	var fm = document.querySelector('#qaf');
	
	if(fm.qa_title.value==""){
		alert("제목을 입력하세요");
		fm.qa_title.focus();
	}else if(fm.qa_content.value==""){
		alert("내용을 입력하세요");
		fm.qa_content.focus();
	}else{
		fm.submit();
	}
}