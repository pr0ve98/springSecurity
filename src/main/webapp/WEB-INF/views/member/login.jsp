<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>로그인 폼</h2>
	<form method="post" action="${ctp}/login">
		<p><input type="text" name="mid" value="atom1234" placeholder="아이디를 입력하세요" class="form-control mt-3 mb-3" required autofocus /></p>
		<p><input type="password" name="pwd" value="1234" placeholder="비밀번호를 입력하세요" class="form-control mt-3 mb-3" required /></p>
		<p>
			<input type="submit" value="로그인" class="btn btn-primary mr-2" />
			<input type="reset" value="다시입력" class="btn btn-warning mr-2" />
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</p>
	</form>
</div>
<p><br/></p>
</body>
</html>