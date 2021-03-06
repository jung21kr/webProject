<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/login.css" />"/>
<title>login test</title>
</head>
<body>
	<div class="container">
      <form class="form-signin">
         <h2 class="form-signin-heading">Please login</h2>
         <label for="inputID" class="sr-only"></label> 
         <input type="text"  id="id" class="form-control" placeholder="ID" required   autofocus> 
         <label for="inputPassword" class="sr-only"></label>
         <input type="password" id="password" class="form-control" placeholder="Password" required>
         <div class="checkbox">
            <label> <input type="checkbox" value="remember-me">
               Remember me
            </label>
         </div>
         <button id="loginBtn" class="btn btn-lg btn-primary btn-block" type="button">Login</button>
      </form>
   </div>

</body>
<script>
$("#loginBtn").click(function(){
    var param = {};
    param["id"] = $("#id").val();
    param["password"] = $("#password").val();
    param = JSON.stringify(param);
    $.ajax({ 
                   type     : "POST"
               ,   url      : "/user/login"
               ,   dataType : "json" 
               ,   beforeSend: function(xhr) {
                   xhr.setRequestHeader("Accept", "application/json");
                   xhr.setRequestHeader("Content-Type", "application/json");
               }
               ,   data     : param
               ,   success : function(result){
                     alert(result.msg);
                     location.href = result.url;
                  
               }
               ,   error : function(xhr, status, e) {
                     alert("에러 : "+e);
              },
              done : function(e) {
              }
              });
 });
</script>
</html>