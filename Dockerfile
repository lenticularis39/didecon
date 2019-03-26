FROM viktormalik/diffkemp-devel

RUN cd /llvm && git init && git remote add origin https://github.com/viktormalik/llvm && git fetch --depth=5 origin diffkemp && git reset origin/diffkemp

COPY FunctionComparator.cpp /llvm/lib/Transforms/Utils/FunctionComparator.cpp
COPY FunctionComparator.h /llvm/include/llvm/Transforms/Utils/FunctionComparator.h

RUN touch /llvm/lib/Transforms/Utils/FunctionComparator.cpp && touch  /llvm/include/llvm/Transforms/Utils/FunctionComparator.h

RUN cd /llvm && git config --global user.email "tglozar@gmail.com" && git config --global user.name "Tomáš Glozar <AUTOMATIC>" && git commit -a -m "AUTOMATIC: Debug returns in FunctionComparator." && ninja -C /llvm/build && ninja -C /llvm/build install

RUN mkdir /scripts
COPY scripts/b /scripts/b
COPY start.sh /start.sh

ENV PYTHONPATH /diffkemp:/usr/lib/python2.7:/usr/lib/python3.6
