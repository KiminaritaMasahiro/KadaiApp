<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style type="text/css">
        body {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
            background-color: #E8F9FD;
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
            background-color: #E8F9FD;
        }
        .main a{
            text-decoration: none;
        }
        .header label{
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
          text-align    : left;      /* 文字位置   */
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
          border-radius: 10px;
          height: 70px;
          width: 200px;
          margin: 10px auto;
        }

        p{
            border-bottom: 10px #999999 ;
            font-size: 40px;
        }

        .n{
            display: flex;
            justify-content: left;
            align-items: center;
            width: 750px;
            height: 400px;
            background-color: white;
            background-size: cover;
            text-align: left;
            margin: 5% auto;
            white-space: pre;
        }
        .ikk {
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
          border-radius: 10px;
          height: 70px;
          width: 100px;
          margin: 10px auto;
        }

    </style>
</head>
<body>
    <div class="header">
    <label>企業情報編集画面</label>
</div>
<div class="n">
<p>    企業名 :
    地域 :
    職種 :
    事業内容 :
    PDFの設定 :                          <input type="submit" value="選択" class="ikk"></p><br>
    <input type="button" value="求人票表示" class="ik"  style="position: absolute; left: 600px; bottom: 10px"/>
</div>
</body>
</html>