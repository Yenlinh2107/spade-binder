FROM ubuntu:20.04

# Thiết lập múi giờ tự động
ENV DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime && \
    apt-get update && apt-get install -y tzdata

# Cập nhật hệ thống và cài đặt SPAdes
RUN apt-get install -y spades curl python3-pip && apt-get clean

# Đặt thư mục làm việc
WORKDIR /home
