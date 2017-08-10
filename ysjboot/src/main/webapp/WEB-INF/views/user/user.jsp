<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<title>login test</title>
</head>
<body>
	<div class="container">
		<table id="table" data-height="460"
			class="table table-bordered table-hover">
			<thead>
				<tr>
					<th class="text-center">번호</th>
					<th class="text-center">아이디</th>
					<th class="text-center">이름</th>
					<th class="text-center">권한</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${userList}" varStatus="status">
					<tr align="center">
						<td>${user.no}</td>
						<td><a href="/user/${user.no}">${user.id}</a></td>
						<td>${user.name}</td>
						<td>${user.level}</td>
					</tr>
				</c:forEach>				
			</tbody>
		</table>
	</div>	
</body>
</html>