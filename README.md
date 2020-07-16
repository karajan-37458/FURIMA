
![FURIMA](https://user-images.githubusercontent.com/66311435/87513342-8ae60f00-c6b3-11ea-90a6-e912fbe605fb.jpg)




<h2 align="center">FURIMA</h2>

## :link: アプリケーションの概要
<ul>
  <li>メルカリクローンのフリーマーケットサイトです。</li>
  <li>TECH CAMP 78期短期集中コースEチームで作成。</li>
  <li>作成期間 2020/6/29 ~ 2020/7/23</li>
</ul>

## :link: アプリケーションの機能
<ul>
  <li>新規会員登録・ログインをすると商品の購入、出品が可能。</li>
  <li>新規会員登録、ログインがお済みでない方も商品の一覧、詳細を閲覧可能。</li>
  <li>決済方法はご自身のクレジットカードのみ。</li>
</ul>

## :link: 主な使用言語

<p align="center">
  <a href="https://www.ruby-lang.org/ja/"><img src="https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png" width="45px;" /></a>
  <a href="https://railsguides.jp/getting_started.html"><img src="https://kuromame-blog.com/wp-content/uploads/rails-768x432.png" height="45px;" /></a>
  <a href="http://haml.info/"><img src="https://user-images.githubusercontent.com/39142850/71774618-b32edb80-2fb5-11ea-9050-d5929a49e9a5.png" height="45px;" /></a>
  <a href="https://sass-lang.com/"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Sass_Logo_Color.svg/144px-Sass_Logo_Color.svg.png" height="40px;" /></a>
  <a href="https://jquery.com/"><img src="https://syncer.jp/storage/web/brand-logos/static/dst/jquery-logo-001.png" height="45px;" /></a>
  <a href="https://github.co.jp/"><img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" height="45px;" /></a>
  <a href="https://aws.amazon.com/jp/"><img src="https://d0.awsstatic.com/logos/powered-by-aws.png" height="45px;" /></a>
</p>

## :link: 制作メンバー&実装内容の紹介

#### 曽我部成晃
<ul>
  <li>スクラムマスター</li>
  <li>デプロイ担当、AWS,EC2,~S3導入</li>
  <li>Basic認証</li>
  <li>READ.ME作成</li>
  <li>ER図作成、編集</li>
  <li>トップページ(ビュー)</li>
  <li>ヘッダー作成</li>
  <li>フッター作成</li>
  <li>商品一覧表示(ビュー、サーバーサイド)</li>
  <li>商品削除機能</li>
  <li>パンくず機能</li>
</ul>

#### 柄澤綜秀
<ul>
  <li>ログイン、新規会員登録機能(ビュー、サーバーサイド)</li>
  <li>住所登録(ビュー、サーバーサイド)</li>
  <li>ユーザーマイページ</li>
  <li>クレジットカード登録画面(ビュー)</li>
  <li>商品詳細ページ(ビュー、サーバーサイド)</li>
  <li></li>
  <li></li>
  <li></li>
</ul>

#### 高見澤祐美
<ul>
  <li>商品カテゴリ機能</li>
  <li>商品購入機能(サーバーサイド)</li>
  <li>クレジットカード登録（Payjp)</li>
  <li>クレジットカード情報表示(Payjp)</li>
  <li>商品購入完了ページ</li>
  <li></li>
</ul>

#### 常見勇太
<ul>
  <li>商品出品ページ(ビュー)</li>
  <li>商品出品機能</li>
  <li>商品編集ページ(ビュー)</li>
  <li>商品編集機能</li>
  <li></li>
  <li></li>
  <li></li>
  <li></li>
</ul>

## :globe_with_meridians: サイト紹介
<ul>
  <li>ユーザー名 : masaaki</li>
  <li>パスワード : hayate1130</li>
  <li>IPアドレス : http://54.238.23.37/</li>
</ul>

## :computer: インストール方法
1.このリポジトリを複製
$ git clone https://github.com/masaaki1130/fleamarket_sample_78e.git

2.インストールしたリポジトリに移動
$ cd freemarket_samle_78e.git

3.gemをアプリケーションに適用
$ bundle install

4.DBの作成&反映
$ rails db:create
$ rails db:migrate

5.カテゴリ一覧の反映
$ rails db:seed

6.アプリケーションの起動
$ rails s
👉 http://localhost:3000

## :page_facing_up: ER図

![データベース ER 図 (FURIMA) ](https://user-images.githubusercontent.com/66311435/87666902-6ddd3900-c7a4-11ea-9926-53a4ff401bc0.png)

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|family_name|string|null: false|
|family_name_kana|string|null: false|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|birth_day|date|null: false|
|phone_number|integer|null: false|
### Association
- has_many :purchases
- has_many :addresses
- has_many :products
- has_one :card

### addressesテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|family_name_kana|string|null: false|
|given_name|string|null: false|
|given_name_kana|string|null: false|
|user_id|references|null: false, foreign_key: true|
|postal|string|null: false|
|prefecture_id|string|null: false|
|city|string|null: false|
|house_number|string|null: false|
|building_name|string||
|phone_number|string||
### Association
- belongs_to :user
- belongs_to_active_hash :prefecture

### cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|customer_id|string|null: false|
|card_id|string|null: false, foreign_key: true|
### Association
- belongs_to :user

### productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|text|text|null: false|
|category_id|references|null: false, foreign_key: true|
|brand_id|integer||
|buyer_id|integer|foreign_key: true|
|price|integer|null: false|
|shipping_cost_id|integer|null: false|
|prefecture_id|integer|null: false|
|user_id|references|null: false, foreign_key: true|
|status_id|integer|null: false|
|day_id|integer|null: false|
### Association
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :brand
- belongs_to_active_hash :status
- belongs_to_active_hash :day
- belongs_to_active_hash :shipping_cost
- has_many :purchases
- belongs_to :user
- belongs_to :category
- has_many :images
- accepts_nested_attributes_for :images, allow_destroy: true

### imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|product_id|references|null: false, foreign_key: true|
### Association
- belongs_to :product

### categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :products
- has_ancestry
