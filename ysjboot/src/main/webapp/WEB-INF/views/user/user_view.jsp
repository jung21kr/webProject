<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<title>user test</title>
</head>
<body>
	<div class="container">
		<c:out value="${total}" />
		<table id="table" data-height="460"
			class="table table-bordered">
			<tbody>
					<tr align="center">
						<td>번호</td>
						<td>${user.no}</td>
					</tr>
					<tr align="center">
						<td>아이디</td>
						<td>${user.id}</td>
					</tr>
					<tr align="center">
						<td>이름</td>
						<td>${user.name}</td>
					</tr>
					<tr align="center">
						<td>권한</td>
						<td>${user.level}</td>
					</tr>
				<tr>
				    <td colspan="2" align="center">
					<button class="btn btn-primary">삭제하기</button>
					<button class="btn btn-primary">추가하기</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
<script>
$("button").click(function(){
	var sign = this.innerHTML;
	var url = "/user";
	if(sign=="삭제하기"){
		url += "/del?no=${user.no}";
	}
	else if(sign=="추가하기"){
		url += "/insert";
	}
	location.href=url;
})
</script>
</html>