# Build with:

#	docker build -t termux/package-builder .# Push to docker hub with:

#	docker push termux/package-builder

# This is done after changing this file or any of the

# scripts/setup-{ubuntu,android-sdk}.sh setup scripts.

FROM ubuntu:21.10

# Fix locale to avoid warnings:

ENV LANG en_US.UTF-8

# Setup needed packages and the Android SDK and NDK:

RUN apt update

RUN apt upgrade -y

RUN apt install git wget curl -y

RUN apt install wget openssl-tool proot utils -y

RUN echo "starting apt install wget openssl-tool proot -y "

RUN apt install wget openssl-tool proot utils -y 

RUN echo "starting hash -r"

RUN hash -r

RUN echo "starting wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh"

RUN wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh

RUN echo "starting bash ubuntu.sh"

RUN bash ubuntu.sh 

RUN echo "starting ./start-ubuntu.sh"

RUN ./start-ubuntu.sh

RUN echo "starting https://github.com/coder/code-server/releases/download/v4.3.0/code-server_4.3.0_arm64.deb"

RUN wget https://github.com/coder/code-server/releases/download/v4.3.0/code-server_4.3.0_arm64.deb

RUN echo "starting apt install ./code-server_4.3.0_amd64.deb"

RUN echoinstall ./code-server_4.3.0_amd64.deb

RUN echo "starting export PASSWORD="1234567890" "

RUN export PASSWORD="1234567890"   

RUN echo "starting install updates"

RUN apt update -y

RUN apt install python -y

RUN apt install g++ -y

RUN echo "starting code server"

USER builder:builder

WORKDIR /home/builder/termux-packages
