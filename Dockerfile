FROM ubuntu:22.04

# 패키지 설치 시 프롬프트 출력 방지
# ENV DEBIAN_FRONTEND=noninteractive

# 필수 기본 도구 및 작업용 패키지 설치
RUN apt-get update && apt-get install -y \
    vim \
    curl \
    git \
    python3 \
    build-essential \
    ethtool
    && rm -rf /var/lib/apt/lists/*

# 작업 디렉터리 설정
WORKDIR /scr

# 컨테이너가 바로 종료되지 않도록 bash 유지
CMD ["/bin/bash"]
# trigger test
