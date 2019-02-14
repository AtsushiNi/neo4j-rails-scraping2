# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
野球チームの選手データページからスクレイピングしてneo4jに保存する
lib/tasks/scraping.rakeに記述

(ps aux | grep vagrantでいらないプロセスをkill -9)
rails neo4j:install[community-latest]
rails neo4j:start
rails db:migrate
rails neo4j:migrate RAILS_ENV=development
rails scraping:scrape

rails noe4j:stop
db/neo4j/development/conf/neo4j.confをdbms.connector.bolt.listen_address=192.168.33.11:7472、dbms.connector.http.listen_address=192.168.33.11:7474に変更
rails neo4j:start
しばらく待ってhttp://192.168.33.11:7474にアクセス
