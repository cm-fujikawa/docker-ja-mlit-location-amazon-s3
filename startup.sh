#!/bin/sh

mkdir location
cd location

# 街区
mkdir 18.0a
cd 18.0a
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/01000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/02000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/03000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/04000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/05000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/06000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/07000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/08000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/09000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/10000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/11000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/12000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/13000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/14000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/15000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/16000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/17000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/18000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/19000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/20000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/21000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/22000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/23000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/24000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/25000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/26000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/27000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/28000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/29000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/30000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/31000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/32000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/33000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/34000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/35000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/36000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/37000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/38000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/39000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/40000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/41000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/42000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/43000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/44000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/45000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/46000-18.0a.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/18.0a/47000-18.0a.zip
find . -name '*.zip' | xargs -L1 unzip -j -o
rm *.zip *.html *.xml
find . -name '*.csv' | xargs -L1 nkf -S -w --in-place
find . -name '*.csv' | xargs -L1 gzip
aws s3 mb s3://$BUCKET_NAME
aws s3 sync ../18.0a s3://$BUCKET_NAME/location/18.0a_`date '+%Y%m%d'`/

# 大字・町丁目
cd ..
mkdir 13.0b
cd 13.0b
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/01000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/02000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/03000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/04000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/05000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/06000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/07000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/08000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/09000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/10000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/11000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/12000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/13000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/14000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/15000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/16000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/17000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/18000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/19000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/20000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/21000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/22000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/23000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/24000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/25000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/26000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/27000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/28000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/29000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/30000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/31000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/32000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/33000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/34000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/35000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/36000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/37000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/38000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/39000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/40000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/41000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/42000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/43000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/44000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/45000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/46000-13.0b.zip
wget https://nlftp.mlit.go.jp/isj/dls/data/13.0b/47000-13.0b.zip
find . -name '*.zip' | xargs -L1 unzip -j -o
rm *.zip *.html *.xml
find . -name '*.csv' | xargs -L1 nkf -S -w --in-place
find . -name '*.csv' | xargs -L1 gzip
aws s3 mb s3://$BUCKET_NAME
aws s3 sync ../13.0b s3://$BUCKET_NAME/location/13.0b_`date '+%Y%m%d'`/
