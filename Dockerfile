FROM golang:1.11
RUN go get -u github.com/kardianos/govendor
RUN echo "deb http://mirrors.aliyun.com/debian buster main contrib non-free" > /etc/apt/sources.list && \
	echo "deb-src http://mirrors.aliyun.com/debian buster main contrib non-free" >> /etc/apt/sources.list && \
	echo "deb http://mirrors.aliyun.com/debian buster-updates main contrib non-free" >> /etc/apt/sources.list && \
	echo "deb-src http://mirrors.aliyun.com/debian buster-updates main contrib non-free" >> /etc/apt/sources.list && \
	echo "deb http://mirrors.aliyun.com/debian-security buster/updates main contrib non-free" >> /etc/apt/sources.list && \
	echo "deb-src http://mirrors.aliyun.com/debian-security buster/updates main contrib non-free" >> /etc/apt/sources.list
RUN apt update -y
RUN apt install -y sudo neovim
