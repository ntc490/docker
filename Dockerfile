FROM ubuntu:22.04
COPY install-deps.sh /install-deps.sh
RUN bash /install-deps.sh && rm -f /install-deps.sh
ARG user=ncrapo
ARG uid=1000
ARG gid=1000
COPY add-my-user.sh /add-my-user.sh
ENV PATH="~/.local/bin:$PATH"
RUN bash /add-my-user.sh && rm -f /add-my-user.sh
USER $user
