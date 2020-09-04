function plan_on() {
	var po = document.querySelector("#M_planner");
	po.innerHTML = "오늘은 어떤 하루를 보낼까요?";
}
function plan_out() {
	var po = document.querySelector("#M_planner");
	po.innerHTML = "Planner";
}
function travel_on() {
	var po = document.querySelector("#M_travel");
	po.innerHTML = "나만의 특별한 여행을 편하게 계획하세요!";
}
function travel_out() {
	var po = document.querySelector("#M_travel");
	po.innerHTML = "Travel";
}

function login() {
	window.open("member/login.jsp","로그인", "width=300,height=300")
}

function user_ck(id) {
	if(id != ''){
		location.href="plan.pl";
		alert=("로그인 후 이용해주세요.");
	}else{
		location.href= "login.do?kind=login";
	}
}

function user_tk(id) {
	if(id != ''){
		location.href="travel.tr";
		alert=("로그인 후 이용해주세요.");
	}else{
		location.href= "login.do?kind=login";
	}
}