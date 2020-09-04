<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="http://<%=request.getServerName() %>:8080/groom/lib/rent.css">

<div id='r_title'>렌트 검색결과</div>
<body>
	<div id='res_menu'>
		<table class='res'>
			<tr>
				<td colspan=2>장소<input type="search"></td>
				<td>대여일<input type="date">~
				</td>
				<td>~<input type="search"></td>
				<td>반납일<input type="date"></td>
				<td><input type="button" value=지도></td>
			</tr>
		</table>
	</div>
	<div id='rent_res'>
		<table class='res'>
			<tr>
				<td height=auto>검색결과
					<div>
						<table>
							<tr>
								<td>사진</td>
								<td>렌트회사이름</td>
								<td>최저가사이트목록</td>
							</tr>
							<tr>
								<td><div>
										<table>
											<tr>
												<td>별점
										</table>
									</div></td>
								<td>차량 설명</td>
								<td><div>
										<input type="button" value=페이지이동>
									</div></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<div id='button'>
		<span><a href="../travel.jsp">Travel</a></span> <span><a href="#">Next</a></span>
	</div>
