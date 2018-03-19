<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="/session" method="post">
	<div>
		<h1>Sign in to SPRING</h1>
	</div>
	<c:if test="${!empty err }">
		<div class="alert alert-danger">${err }</div>
	</c:if>
	<div class="">
		<label for="login_field"> Username or email address </label> <input
			type="text" name="idmail" id="login_field" class="form-control"
			tabindex="1" autofocus="autofocus"> <label for="password">
			Password <a class="label-link" href="/password_reset">Forgot
				password?</a>
		</label> <input type="password" name="password" id="password"
			class="form-control">
		<button type="submit" name="commit" value="Sign in"
			class="btn btn-primary btn-block" style="margin-top: 20px;">Sign
			in</button>
	</div>
</form>
