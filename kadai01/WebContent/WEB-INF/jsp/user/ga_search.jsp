<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    background-color: #FFE7FF;
}
h1{
    text-align: center;
    font-size: 90px;
    margin: 0 auto;
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
    background-color: white;
    padding:10px;
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
.header p{
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
    font-size: 90px;
    margin: 0 auto;
    text-align: center;

}
.n{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 900px;
    height: 230px;
    background-color: white;
    text-align: center;
    margin: 5% auto;
}
.button input{
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
    font-size: 70px;
    margin: 0 auto;
}

.z {
  display       : inline-block;
  font-size     : 18pt;        /* 文字サイズ */
  text-align    : center;      /* 文字位置   */
  cursor        : pointer;     /* カーソル   */
  padding       : 12px 19px;   /* 余白       */
  background    : #ffffff;     /* 背景色     */
  color         : #999999;     /* 文字色     */
  line-height   : 1em;         /* 1行の高さ  */
  transition    : .3s;         /* なめらか変化 */
  border        : 2px solid #ffffff;    /* 枠の指定 */
  border: 1px solid rgb(172, 171, 171);
  border-top-left-radius:30px;
  border-bottom-left-radius:30px;
}

.q {
  display       : inline-block;
  font-size     : 18pt;        /* 文字サイズ */
  text-align    : center;      /* 文字位置   */
  cursor        : pointer;     /* カーソル   */
  padding       : 12px 19px;   /* 余白       */
  background    : #ffffff;     /* 背景色     */
  color         : #999999;     /* 文字色     */
  line-height   : 1em;         /* 1行の高さ  */
  transition    : .3s;         /* なめらか変化 */
  border        : 2px solid #ffffff;    /* 枠の指定 */
  border: 0.5px solid rgb(172, 171, 171);
  border-top-right-radius:30px;
  border-bottom-right-radius:30px;
  width: 700px;
}

select{
    border: 0.5px solid rgb(132, 133, 134);
    width: 300px;
    height: 70px;
    font-size: 50px;

}

.ik {
  display       : inline-block;
  font-size     : 18pt;        /* 文字サイズ */
  text-align    : center;      /* 文字位置   */
  cursor        : pointer;     /* カーソル   */
  padding       : 12px 19px;   /* 余白       */
  background    : #ffffff;     /* 背景色     */
  color         : #999999;     /* 文字色     */
  line-height   : 1em;         /* 1行の高さ  */
  transition    : .3s;         /* なめらか変化 */
  border        : 2px solid #ffffff;    /* 枠の指定 */
  border: 0.5px solid rgb(172, 171, 171);
  border-top-right-radius:30px;
  border-bottom-right-radius:30px;
  height: 70px;
  width: 130px;
}

.ki{
    padding       : 12px 19px;
}
</style>
</head>
<body>
    <div class="header">
        <p>学生メニュー</p>
    </div>
    <div class="n">

	<form action="">
		<input type="submit"  value="検索" class="z"><input type=text name=name class="q" value="企業名"><br>
    <div class="ki">
        <select  name="select" class="vb">
            <option value="" selected hidden>業種</option>
        <option value="in">インフラ</option>
        <option value="tu">通信</option>
        <option value="ka">開発</option>
        <option value="un">運用・保守</option>
        <option value="so">その他</option>
        </select>
        <select  name="select">
            <option value="in">都道府県</option>
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
            <input type="submit" value="検索" class="ik">
	</form>
    </div>
	</div>
</body>
</html>