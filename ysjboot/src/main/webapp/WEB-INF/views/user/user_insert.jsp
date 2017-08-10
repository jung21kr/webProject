<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<title>board test</title>
</head>
<body>
	<div class="container">
		<c:out value="${total}" />
		<table id="table" data-height="460"
			class="table table-bordered table-hover">
			<thead>
				<tr>
					<th class="text-center">번호</th>
					<th class="text-center">아이디</th>
					<th class="text-center">이름</th>
					<th class="text-center">비밀번호</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${userList}" varStatus="status">
					<tr align="center">
						<td>${user.no}</td>
						<td>${user.id}</td>
						<td>${user.name}</td>
						<td>${user.password}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="5" align="right"><button class="btn btn-primary">insert</button></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>

</html>