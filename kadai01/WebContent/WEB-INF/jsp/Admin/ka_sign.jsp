<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者登録画面</title>
</head>
<body>
	<div>
		<h1>アカウント作成</h1>
            <form action="/kadai01/KRegisterUser" method="post">
			<h3>ID</h3>
			<p><input type="text" name="id" required></p>
			<h3>パスワード</h3>
			<p><input type="text" name="pass" required></p>
			<br>
			<input type="submit" value="確認">
		</form>
	</div>
</body>
</html>