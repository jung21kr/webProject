<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<script>
if(${delete}==1){
	alert("정상적으로 삭제되었습니다.");
	location.href="/user/?nowPage=${nowpage}}";
}else{
	alert("삭제하지 못했습니다.");
}
</script>
</html>