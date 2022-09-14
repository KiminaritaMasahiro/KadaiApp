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
		<h1>企業登録</h1>
            <form action="/kadai01/ARegisterUser" method="post">
			<h3>ID</h3>
			<p><input type="text" name="id" required></p>
			<h3>企業名</h3>
			<p><input type="text" name="name" required></p>
						<h3>地域</h3>
			<p><input type="text" name="region" required></p>
						<h3>業種</h3>
			<p><input type="text" name="type" required></p>
						<h3>事業内容</h3>
			<p><input type="text" name="content" required></p>
						<h3>PDF設定</h3>
			<p><input type="text" name="pdf" required></p>
			<br>
			<input type="submit" value="確認">
			</form>
	</div>
</body>
</html>