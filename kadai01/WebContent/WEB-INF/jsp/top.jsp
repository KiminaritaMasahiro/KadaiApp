<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>トップメニュー</title>
<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}
.dis{
	height:100vh;
	width:100vw;
}
.header {
    display: flex;
    justify-content: center;
    align-items: center;
	height: 22%;
	width: 100%;
}

.main {
    display: flex;
    justify-content: space-around;
    align-items: center;
    flex-direction: column;
	height: 78%;
	width: 100%;
	background-color: #FFE7FF;
}
.main a{
    text-decoration: none;
}
.header h1{
    font-size: 150px;
    letter-spacing: 30px;
}
.button{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 600px;
    height: 230px;
    background-color: white;
    border-radius: 20px;
}
.button h1{
    font-size: 120px;
}
h1 {
  display        : inline-block;
  color          : #ffffff;
  letter-spacing : 4px;
  text-shadow    :
       2px  2px 1px #999999,
      -2px  2px 1px #999999,
       2px -2px 1px #999999,
      -2px -2px 1px #999999,
       2px  0px 1px #999999,
       0px  2px 1px #999999,
      -2px  0px 1px #999999,
       0px -2px 1px #999999;
    font-family: 'メイリオ';
}

body {
  background-image: url("/WEB-INF/jsp/image/image.jpg");
  background-size: cover;
}
</style>
</head>
<body>
	<div class="dis"> 	<!--背景写真の設定-->
		<div class="" style ="background-color: #fff;">	<!--背景白-->
			<h1>企業情報検索システム</h1>
			<form action="/kadai01/ga_login" method="get">
				<div class="button">
					<input type="submit" value="学生">
				</div>
			</form>

			<form action="/kadai01/ka_login" method="get">
				<div class="button">
	            	<input type="submit" value="管理者">
	            </div>
			</form>
		</div>
	</div>

</body>
</html>