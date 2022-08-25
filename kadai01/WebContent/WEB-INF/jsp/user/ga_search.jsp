<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>企業検索</h1>
	<form action="">
		<input type="submit" value="検索" name=gyo><input type=text name=name><br>
        <select  name="select">
        <option value="" selected hidden>業種</option>
        <option value="in">インフラ</option>
        <option value="tu">通信</option>
        <option value="ka">開発</option>
        <option value="un">運用・保守</option>
        <option value="so">その他</option>
        </select>
        <select  name="select">
            <option value="" selected hidden>地域</option>
            <option value="ho">北海道</option>
            <option value="ao">青森</option>
            <option value="iw">岩手</option>
            <option value="ak">秋田</option>
            <option value="mi">宮城</option>
            <option value="hu">福島</option>
            <option value="ya">山形</option>
            <option value="to">栃木</option>
            <option value="ib">茨城</option>
            <option value="ti">千葉</option>
            <option value="ka">神奈川</option>
            <option value="gu">群馬</option>
            <option value="sa">埼玉</option>
            <option value="to">東京</option>
            <option value="ni">新潟</option>
            <option value="ty">富山</option>
            <option value="is">石川</option>
            <option value="hk">福井</option>
            <option value="yn">山梨</option>
            <option value="na">長野</option>
            <option value="gi">岐阜</option>
            <option value="si">静岡</option>
            <option value="ai">愛知</option>
            <option value="mi">三重</option>
            <option value="sg">滋賀</option>
            <option value="ky">京都</option>
            <option value="oo">大阪</option>
            <option value="hy">兵庫</option>
            <option value="nr">奈良</option>
            <option value="wa">和歌山</option>
            <option value="to">鳥取</option>
            <option value="sm">島根</option>
            <option value="ok">岡山</option>
            <option value="hr">広島</option>
            <option value="tk">徳島</option>
            <option value="kg">香川</option>
            <option value="eh">愛媛</option>
            <option value="ku">高知</option>
            <option value="hc">福岡</option>
            <option value="su">佐賀</option>
            <option value="ng">長崎</option>
            <option value="km">熊本</option>
            <option value="oi">大分</option>
            <option value="my">宮崎</option>
            <option value="ki">鹿児島</option>
            <option value="oc">沖縄</option>

            </select>
           <input type="submit" value="検索"name=range>
	</form>
</body>
</html>