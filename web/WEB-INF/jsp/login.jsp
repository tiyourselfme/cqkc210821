<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>登录</title>
  <!-- Bootstrap core CSS -->
  <link href="../../source/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="../../source/css/signin.css" rel="stylesheet">
</head>

<body class="text-center">
<form class="form-signin"   action="${pageContext.request.contextPath}/dologin.html" method="post">
  <img class="mb-4"  src="../../source/img/20210601113216.png" alt="" width="640" height="640">
  <h1 class="h3 mb-3 font-weight-normal" <%--th:text="#{login.tip}"--%>>Please sign in</h1>


<%--  <p style="color: red" th:text="${msg}" th:if="${not #strings.isEmpty(msg)}"></p>--%>

  <label class="sr-only">Username</label>
  <input type="text" class="form-control"  name="userCode" <%--th:placeholder="#login{login.username}"--%> required="" autofocus="">
  <label class="sr-only">Password</label>
  <input type="password" class="form-control" name="userPassword" <%--th:placeholder="#{login.password}"--%> required="">
  <div class="checkbox mb-3">
   <%-- <label>
      <input type="checkbox" value="remember-me" &lt;%&ndash;th:text="#{login.remember}"&ndash;%&gt;>remember me
    </label>--%>
  </div>
  <button class="btn btn-lg btn-primary btn-block" type="submit"<%-- th:text="#{login.btn}"--%>>Sign in</button>
  <p class="mt-5 mb-3 text-muted">© 2017-2018</p>
  <a class="btn btn-sm" th:href="@{/index.html(l='zh_CN')}">中文</a>
  <a class="btn btn-sm" th:href="@{/index.html(l='en_US')}">English</a>
</form>

</body>

</html>