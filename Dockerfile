# ビルド用のステージ
FROM maven:3.6.3-openjdk-11 as build
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
WORKDIR /usr/src/app
# まず依存関係をインストールし、テストを実行
RUN mvn dependency:go-offline
RUN mvn test
# アプリケーションをパッケージング
RUN mvn package

# 実行用のステージ
FROM openjdk:11-jre-slim
COPY --from=build /usr/src/app/target/*.jar /usr/app/fizzbuzz-app.jar
WORKDIR /usr/app
CMD ["java", "-jar", "fizzbuzz-app.jar"]
