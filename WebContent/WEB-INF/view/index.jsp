<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Spring - managed by GIT</title>
</head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>
	<div align="center" class="container">
		<div class="jumbotron">
			<h1>Spring Project</h1>
			<small>- ${ment } -</small>
		</div>
		<hr />
		<div align="right" style="padding-right: 20px;">
			<a href="/login"><span>Sign in</span></a> <span>or</span> <a
				href="/join"><span>Sign up</span></a>
		</div>
		<hr />
		<div class="alert alert-info">
			<b>현재접속자수:<span id="cnt"></span></b> / 
			<strong>서버알림</strong><span id="info">-</span>
		</div>
	</div>
	<script>
		var ws = new WebSocket("ws://${pageContext.request.serverName}/handle");
		// 연결이 됬을때. 
		ws.onopen = function() {
			console.log("opened ");
			console.log(this);
		}
		// 메시지가 들어올때.  
		ws.onmessage = function(resp) {
			console.log(resp);
			var obj = JSON.parse(resp.data);	// {"cnt" : ??, "info" :""}
			$("#cnt").html(obj.cnt);
			$("#info").html(obj.info);
		}
		// 연결이 끊길때. 
		ws.onclose = function() {
			window.alert("연결이 해제되었습니다.");
		}
	</script>
</body>
</html>






