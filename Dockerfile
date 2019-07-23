FROM viktormalik/diffkemp-devel

RUN mkdir /scripts
COPY scripts/b /scripts/b
COPY scripts/git-completion.bash /scripts/git-completion.bash
COPY start.sh /start.sh

RUN apt-get install -y rpm2cpio

ENTRYPOINT ["bash", "/start.sh"]
