<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
table tr td {
	border: 1px solid black;
	text-align: center;
	width: 100px;
	height: 50px;
}

.fir_line {
	height: 70px;
}

.input_cell {
	width: 200px;
}
</style>

<script type="text/javascript">
	function scd_save() {
		var scd_time = 
			[["00~02","02~04","04~06","06~08","08~10","10~12","12~14","14~16","16~18","18~20","20~22","22~00"],
				["#d1","#d2","#d3","#d4","#d5","#d6","#n1","#n2","#n3","#n4","#n5","#n6"]];
		var tt = document.querySelector("#input_t");
		for (var i in scd_time[0]){
			if (scd_time[0][i]==tt.value){
				break;
			}
		}
		var d1 = opener.document.querySelector(scd_time[1][i]);
		d1.innerHTML = document.querySelector("#scd_input").value;
		
		var fm = document.querySelector('#scd_write');
		fm.submit();
		
		window.close();
	}
</script>

<form method='get' id='scd_write' action='../scd.pl'>
<input type='hidden' name='kind' value='scd_set'>

<input type='hidden' id='input_t' name='scd_time'>
<table>
	<tr class=fir_line>
		<td>시간</td>
		<td>할일</td>
	</tr>
	<tr>
		<td><div id='t'></div></td>
		<td class=input_cell>
		<input id="scd_input" type='text' name='scd_content'>
		<input type="button" value="저장" onclick='scd_save()'></td>
	</tr>
</table>
</form>