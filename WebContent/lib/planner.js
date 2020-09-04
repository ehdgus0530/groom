//버킷리스트 구역
function bucket() {
	location.href="bk.pl?kind=bucket";
}

function save_bk() {
	var fm = document.querySelector('#bucketf');
	fm.submit();
}
function bk_back() {
	location.href="plan.pl";
}

//스케줄러 구역
function scheduler() {
	location.href = "plan.pl?kind=scheduler";
}

function scd_input(t) {
	var scd = window.open("planner/scd_set.jsp", "스케쥴등록", "width=300,height=100");
	scd.window.onload = function() {
		scd.document.querySelector("#t").innerHTML = t;
		scd.document.querySelector("#input_t").value = t;
	};
}

//캘린더  구역
function calendar() {
	location.href = "plan.pl?kind=calendar";
}

function home() {
	location.href="index.jsp";
}


