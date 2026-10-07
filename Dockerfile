FROM kalilinux/kali-rolling

# Avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y --no-install-recommends \
kali-tools-web \ 
kali-tools-information-gathering \ 
kali-tools-vulnerability \
kali-tools-passwords \
kali-tools-exploitation \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /notes


CMD ["/bin/bash"]
