<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者登録画面</title>
<style type="text/css">
    body {
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
        background-color: rgb(133, 204, 249);
    }
    .dis{
        height:100%;
        width:40%;
        text-align: center;
        margin: auto;
    }
    .main {
        justify-content: space-around;
        align-items: center;
        flex-direction: column;
        height: 100%;
        width: 100%;
        background-color:white;
    }
    .button{
        display: flex;
        justify-content: center;
        align-items: center;
        width: 250px;
        height: 10%;
        background-color: #ffffff;
        border-radius: 20px;
        margin-bottom: auto;
        margin: auto;
    }
    .main h3{
    letter-spacing: 30px;
    margin-left: 50px;
    text-align: left;
}
</style>
</head>
<body>
    <div class="dis">
        <div class="main">
            <form action="/kadai01/RegisterUser" method="post">
            <h3>名前</h3>
            <p><input type="text" style="width: 400px; height: 30px;" name="name" placeholder="盛岡太郎"></p>
            <h3>学年</h3>
            <p><input type="text" style="width: 400px; height: 30px;" name="graduation" required></p>
            <h3>学生ID</h3>
            <p><input type="text" style="width: 400px; height: 30px;" name="gaku_id" required></p>
            <h3>パスワード</h3>
            <p><input type="text" style="width: 400px; height: 30px;" name="pass" required></p>
            <br><br><br>
            <input type="submit" class="button" value="確認">
            </form>
    </div>
</body>
</html>