<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者ログイン</title>
</head>
<body>
	<div>
		<form action="/kadai01/KLoginServlet" method="post">
			<label>管理者ID</label>
			<input type="text">

			<label>パスワード</label>
			<input type="pass">
			<input type="submit"value="ログイン">
		</form>

		<h3>--新しい管理者ですか？--</h3>

		<form action="/kadai01/ka_sign">
			<input type="submit"value="新規登録">
		</form>
	</div>
</body>
</html>