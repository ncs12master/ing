<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
	<h1>Sign Up to SPRING</h1>
</div>
<div style="font-size: 17pt; margin-top: 50px;">
	Create your personal account<br /> <span style="font-size: 11pt;">회원가입시
		모든 요소는 필수기입 항목입니다.</span>
</div>
<div>
	<c:if test="${!empty err }">
		<p style="color: red">${err }</p>
	</c:if>
	<form action="/join" method="post"
		style="width: 330px; text-align: left; line-height: 34px;"
		autocomplete="off">
		<p>
			<b>ID(*)</b> <small id="checkrst"></small><br /> <input type="text"
				name="id" id="id" pattern="[a-zA-Z]+" value="${param.id }">
		</p>
		<p>
			<b>EMAIL(*)</b><br /> <input type="email" name="email"
				value="${param.email }">
		</p>
		<p>
			<b>PASS(*)</b><br /> <input type="password" name="password">
		</p>
		<p>
			<button id="sbt" type="submit" style="width: 100%; height: 30px;">가
				입 신 청</button>
		</p>
	</form>
</div>
