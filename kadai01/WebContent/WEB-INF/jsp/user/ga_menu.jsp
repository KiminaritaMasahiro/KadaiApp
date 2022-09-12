<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生メニュー</title>
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
</style>
</head>
<body>
	<div class="dis">
		<div class="header">
			<h1>学生メニュー</h1>
		</div>
		<div class="main">
                <div class="button">
                    <h1><a href="/kadai01/ga_search"> 検索表示</a></h1>
                </div>
                <div class="button">
                    <h1><a href="/kadai01/ga_list"> 検索表示</a></h1>
                </div>
            </a>
		</div>
	</div>

</body>
</html>