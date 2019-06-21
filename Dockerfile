FROM lenticularis/diffkemp-devel

RUN mkdir /scripts
COPY scripts/b /scripts/b
COPY scripts/git-completion.bash /scripts/git-completion.bash
COPY start.sh /start.sh

ENV PYTHONPATH /diffkemp:/usr/lib/python2.7:/usr/lib/python3.6
