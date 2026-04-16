default:
    @just --choose

docker-build:
    docker build -t youyoumu2025/find-the-halo-back-end:latest .

docker-push:
    docker push youyoumu2025/find-the-halo-back-end:latest
