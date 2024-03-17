![Java CI](https://github.com/tmdtky/java-fizzbuzz/actions/workflows/java-ci.yml/badge.svg)

# java-fizzbuzz
Java11を用いてfizzbuzz問題を実行
- 3の倍数の場合は「Fizz」、5の場合は「Buzz」、3の倍数かつ5の倍数は「FizzBuzz」と出力する。また、いずれでもない場合はその数を出力する
- 実行したら1から100までの数字において、上記条件で標準出力に改行つきで出力するプログラムを作成

# Features
- JUnit5によるテストコードの作成
- Docker、docker-composeによる環境構築
- GitHub Actionによる自動デプロイ

# Usage
- Docker Desktopを事前に起動してください。
- 起動方法
```bash
git clone https://github.com/tmdtky/java-fizzbuzz.git
cd <git cloneしたディレクトリ>/java-fizzbuzz
docker-compose up --build
```
- 起動後のdockerプロセス削除方法
```bash
docker-compose down
```
