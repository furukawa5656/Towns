# Towns

## デモ
![画面収録 2020-09-10 2 02 14 mov](https://user-images.githubusercontent.com/65170640/92629924-f6420b00-f309-11ea-8a8b-201444d7c681.gif)

## サイトテーマ
街の暮らしの口コミサイト

### テーマを選んだ理由
前職で多方面をのエリアを対応する不動産営業をしていました際に、  
お客様が各駅の治安などの情報の問合せが多かった経験があります。  
インターネットで調べれば情報も書いていますが、  
結局、その街に住んだことある人が発した言葉の方が、  
信憑性が高いと思い、今回のサイトテーマを選びました。

### ターゲットユーザ
引越する人

### 主な利用シーン
部屋を探す前に、どこに住みたいかという疑問を解決する  
参考サイトとして、利用していただければと思います。

## サイト概要
引越する人のための日本全国のエリアから駅名まで検索できる  
駅の治安や街の暮らしを閲覧投稿できる口コミサイトです。

### 機能
- 駅の検索
- 口コミの閲覧
- 口コミの投稿

### 機能一覧
https://docs.google.com/spreadsheets/d/1q43-p9Db_y7Ytv4lbFFGXMoY-N53fowK-NCFuVeyIEA/edit?usp=sharing

### 使い方
1. 街の口コミを見たい駅まで都道府県からクリックして探します。
2. 口コミが知りたい駅のページをクリックすると口コミが情報が閲覧できます。
3. 駅のページで口コミ投稿ボタンをクリックすると口コミ投稿ができます。

## インストール
$ git clone https://github.com/furukawa5656/Towns  
$ bundle install  
$ rails db:seed  
$ rake insert_line:run  
$ rake insert_station:run

## その他
サイトURL
http://52.197.60.175/

## 作者
furukawa

## ライセンス
"Towns" is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).