## アプリの概要

スポーツの試合を組むことができます

## テストアカウント

test

## 制作背景

このアプリを作ったきっかけは、自分が学生時代にスポーツをしていて顧問の先生が練習試合を組むのが大変そうだったからこのアプリを作成しました。このアプリが普及すれば顧問の先生のコネクションがなくても気軽に練習試合を組むことができます。

## 工夫したポイント

コメント機能を非同期でつけるところが難しく、javascript を使って非同期でコメント機能を実装するところを工夫した

## 開発環境

html,css,ruby on rails,javascript

## 今後実装した機能

トップページを画像を挿入して、アニメーションを付けてたい。
　ユーザーの実績やプロフィールを変更できるようにしたい。



# テーブル設計

## users テーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| team        | string | null: false |
| email       | string | null: false |
| password    | string | null: false |
| profile     | text   | null: false |
| performance | text   | null: false |

## posts テーブル

| Column              | Type       | Options           |
| ------------------- | ---------- | ----------------- |
| user                | references | foreign_key: true |
| place               | text       | null: false       |
| recruitment_team_id | integer    | null:false        |
| sports_id           | integer    | null: false       |
| average_age_id      | integer    | null: false       |
| gender_id           | integer    | null:false        |
| ｜ Remarks          | text       | null:false        |

## comment テーブル

| Column | Type       | Options           |
| ------ | ---------- | ----------------- |
| user   | references | foreign_key: true |
| post   | references | foreign_key: true |
| text   | text       | null:false        |
