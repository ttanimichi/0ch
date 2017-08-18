# 0ch

「sinatraで掲示板を作ろう」の解答例です。

## sinatraで掲示板を作ろう

- Rails 使用禁止です。sinatra ( https://github.com/sinatra/sinatra ) を使ってください
- 2ch のような掲示板を作ってください。ただし 2ch 全体ではなく、ひとつの板だけ作ればいいです
  - 板 has_many スレ
  - スレ has_many 投稿
- 自分で Gemfile を作成して bundle install してください
- app.rb 1ファイルにすべて書くのではなく、適宜ファイルを分割して require するようにしてください
- ActiveRecord 使用禁止です。生 SQL を書いてください
  - SELECT とか INSERT とか
  - DB アダプターには `gem 'mysql2'` を使用してください
  - ただし SQL インジェクション対策はしなくても可とします
  - テーブルの作成などマイグレーションも SQL を書いて手動でやりましょう
- ActiveSupport も使用禁止です。素の Ruby で実装しましょう  
- CSS は生 CSS で良いです。Sass は使わなくても良いです
- haml を使っても erb を使っても slim を使っても良いです
- ここまで出来た人は以下の課題にもチャレンジしてみましょう
  - 指定したスレの投稿をすべて消す rake task を作成してください
    - Rakefile も自分で作成してください
  - sage 機能を実装してください
    - メールアドレス欄に sage と書くとスレが上に来ないようにできる機能のことです
