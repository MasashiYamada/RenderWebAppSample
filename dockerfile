# ベースイメージの選択
FROM python:slim

# コンテナ内のワークディレクトリの宣言
WORKDIR /app

# ホストのファイルをコンテナ内にコピー
COPY ./requirements.txt /app

# コマンドの実行 (pip)
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
