# docker-ja-mlit-location-amazon-s3

## 概要

国土交通省の位置参照情報(CSVファイル)をダウンロードし、指定したS3バケットにアップロードします。
また、Athena等に取り込みやすいよう、文字コードをShift-JISからUTF-8に変換しています。

※都道府県単位/市区町村全域/令和元年/街区および大字・町丁目

## 構築方法

### Docker Hubから取得する場合

1. Docker HubからDockerイメージをプルします。

    ```shell
    docker pull cmfujikawa/ja-mlit-location-amazon-s3
    ```

### ローカルでビルドする場合

1. Dockerイメージをビルドします。

    ```shell
    docker build . -t local/ja-mlit-location-amazon-s3
    ```

## 使用方法

1. 環境変数をセットします。

    ```shell
    export BUCKET_NAME=<bucket_name>
    export AWS_ACCESS_KEY_ID=<aws_access_key_id>
    export AWS_SECRET_ACCESS_KEY=<aws_secret_access_key>
    ```

1. Dockerコンテナを起動します。郵便番号データをダウンロードし、S3にアップロードします。

    ```shell
    docker run --rm \
        -e BUCKET_NAME -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY \
        cmfujikawa/ja-mlit-location-amazon-s3
    ```

1. 次のコマンドで、S3にファイルがアップロードされていることを確認できます。  
  ※AWS CLIが必要です。

    - 街区

        ```shell
        aws s3 ls s3://$BUCKET_NAME/location/18.0a_`date '+%Y%m%d'`/ --profile HOGEHOGE
        ```

    - 大字・町丁目

        ```shell
        aws s3 ls s3://$BUCKET_NAME/location/13.0b_`date '+%Y%m%d'`/ --profile HOGEHOGE
        ```
