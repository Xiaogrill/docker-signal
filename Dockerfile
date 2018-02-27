FROM debian

RUN apt-get update && apt-get install -y curl gnupg apt-transport-https

RUN curl -s https://updates.signal.org/desktop/apt/keys.asc | apt-key add - && \
    echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" > /etc/apt/sources.list.d/signal-xenial.list

RUN apt-get update && apt-get install -y signal-desktop && \
    apt-get autoremove && apt-get clean

# Setting up user environment
RUN find / -type f -perm /6000 -exec chmod -s {} + 2>/dev/null || true && \
    groupadd -g 1000 user && useradd -g user -m -u 1000 user
USER user
ENV HOME /home/user

# It's go time
CMD signal-desktop
