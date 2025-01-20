FROM ubuntu:20.04

# Cập nhật hệ thống và cài đặt SPAdes
RUN apt-get update && apt-get install -y spades curl python3-pip && apt-get clean

# Đặt thư mục làm việc
WORKDIR /home
