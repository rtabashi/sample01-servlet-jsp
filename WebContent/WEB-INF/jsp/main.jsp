<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User,model.Mutter,java.util.List" %>
<%
User loginUser = (User)session.getAttribute("loginUser");
List<Mutter> mutterList = (List<Mutter>)request.getAttribute("mutterList");
String errorMsg = (String)request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>つぶやきアプリ</title>
</head>
<body>
<h1>メイン</h1>
<p><%= loginUser.getName() %>さん，ログイン中</p>
<a href="/sample01/Logout">ログアウト</a>
<p><a href="/sample01/Main">更新</a></p>
<form action="/sample01/Main" method="POST">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<% if (errorMsg != null) { %>
	<p><%= errorMsg %></p>
<% } %>
<% for (Mutter mutter : mutterList) { %>
	<p><%= mutter.getUserName() %>：<%= mutter.getText() %></p>
<% } %>
</body>
</html>