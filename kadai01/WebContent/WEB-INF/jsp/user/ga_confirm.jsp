<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="scopedata.Account" %>
<%
	Account account= (Account)session.getAttribute("LoginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    justify-content: space-between;
    align-items: center;
	height: 22%;
	width: 100%;
}

.main {
    display: flex;
    justify-content: center;
	width: 100%;
    height: 78%;
	background-color: #FFE7FF;
}
.main a{
    text-decoration: none;
}
.header h1{
    font-size: 120px;
    letter-spacing: 30px;
    margin-left: 50px;
}
.header h2{
    font-size: 60px;
}

h1 , h2 {
  display        : inline-block;
  color          : #ffffff;
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
.menu{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 500px;
    height: 150px;
    background-color: rgb(234, 234, 234);
    border-radius: 50px;
    border: solid gray 2px;
    margin-right: 30px;
}
.header a {
    text-decoration: none;
}
.list{
    width: 70%;
    height: 100px;
    background-color: white;
    margin-top: 30px;
    margin:30px auto 0 auto ;
}
.scroll{
    /* display: flex;
    justify-content: center;
    flex-direction: column; */
    overflow: hidden scroll ;
    width: 100%;
    -ms-overflow-style: none;
    scrollbar-width: none;
}
.scroll::-webkit-scrollbar{
  display: none;
}
</style>
</head>
<body>
	<div>
         <h1>アカウント確認</h1>
			<label>学生ID : <%= account.getGaku_id() %></label>

			<label>パスワード : <%= account.getPass() %></label>
			<a href="/Login/top">戻る</a>
			<a href="/kadai01/RegisterUser?action=go">登録</a>
        </div>
</body>
</html>