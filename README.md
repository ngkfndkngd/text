# Let's chokatsu
- URL:http://chokatsu.xyz/


# PC版
<img width="1440" alt="スクリーンショット 2021-12-01 22 49 47" src="https://user-images.githubusercontent.com/88532413/144246459-9bea0f0e-40f8-4c0c-8eee-6012f185e20b.png">

## サイト概要
腸活の日々の記録、<br>
調理にも簡単な腸活レシピに特化した料理サイト。<br>
日々の腸活のログの確認、レシピ閲覧、投稿などユーザーのやる気が上がり、日々の腸を管理をするサイトを実装します。<br>

### サイトテーマ
日々の腸活の記録と料理レシピサイト<br>
腸活の日々の記録、<br>
調理にも簡単な腸活レシピに特化した料理サイト。<br>
日々の腸活のログの確認、レシピ閲覧、投稿などユーザーのやる気が上がり、日々の腸管理をするサイトを実装します。<br>

### テーマを選んだ理由
私は、肌が荒れやすくいつも悩んでいました。<br>
そんな時、スキンケアなどの外からのお手入れだけでなく、体の中からキレイになることで肌荒れもなくなると知りました。<br>
特に、腸が関係していることを知り、３年前から腸活を意識した活動に取り組んできました。<br>
また、腸には美肌を生み出すだけでなく、快便になったり、免疫力も高まり、病気にもなりにくくなると知りますます、興味が湧きました。<br>

ヒトの腸内には1,000種類以上にも及ぶ約100兆個の腸内細菌が生息しています。<br>
腸内細菌には体に良いはたらきをする「善玉菌」、体に悪いはたらきをする「悪玉菌」、そのどちらでもない「日和見菌」の3種類に大別されます。<br>
腸内環境の良し悪しはこれらの腸内細菌の量のバランスが重要になってきます。<br>
いざ、腸内に良いという食べ物（ヨーグルトやキャベツ）を摂取しても毎日同じものを食べ続けるのは難しく、長続きしませんでした。<br>
私と同じように悩むユーザーがいるのではないかと考え、腸内環境によい食品だけでなく、美味しく簡単につくれる料理情報＋日々に腸内環境を記録できる分かりやすいサイトを作りたいと考えました。


### ターゲットユーザ
・料理に興味があり、食に関する健康を気にする20代〜50代男女<br>
・肌荒れや便秘に悩むユーザー<br>
・ダイエットに興味のあるユーザー<br>
・料理好きなユーザー<br>


### 主な利用シーン
・レシピを確認し調理をする際<br>
・毎日の腸内環境の記録を取りたい時<br>
・栄養に興味がある<br>


## 設計書
### 画面遷移図
<https://app.diagrams.net/#G1zZQBzxxyWcYisaAAVOJlhQwhHtUDDgQX>

### ER図
<https://app.diagrams.net/#G1hPwOUGowHUFixx6ysxnFV83jBzBIuDEb>

### 詳細設計
<https://docs.google.com/spreadsheets/d/1jvZKFGVOep3EGqYS2BMH9rAifC-hFF9tAHks5x0Qtmk/edit#gid=2133469642>

## チャレンジ要素一覧
<https://docs.google.com/spreadsheets/d/19Qf4mDMH231_FjOPy3JVyEGV-10ZmFNA4TIN1THf8b8/edit#gid=0>

## 開発環境
- OS：Linux(CentOS)<br>
- 言語：HTML,CSS,JavaScript,Ruby,SQL<br>
- フレームワーク：Ruby on Rails<br>
- JSライブラリ：jQuery<br>
- IDE：Cloud9<br>

## gem一覧
### デバック
gem 'pry-byebug'</br>
gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]</br>

### ログイン機能
gem 'devise'</br>

### レイアウト
gem 'bootstrap', '~> 4.5'</br>
gem 'jquery-rails'</br>
gem 'font-awesome-sass', '~> 5.13'</br>

### 動的フォーム実装機能
gem 'cocoon'</br>
gem "enum_help"</br>
gem "simple_calendar", "~> 2.0"</br>

### 画像投稿機能
gem "refile", require: "refile/rails", github: 'manfe/refile'</br>
gem "refile-mini_magick"</br>

### ページネーション機能
gem 'kaminari', '~> 1.2.1'</br>

### バリデーション日本語化
gem 'devise-i18n'</br>
gem 'devise-i18n-views'</br>

### デプロイ
gem 'dotenv-rails'</br>
group :production do</br>
  gem 'mysql2'</br>
end</br>


## 使用素材
- https://pixabay.com/ja/
- https://www.ac-illust.com/
