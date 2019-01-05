FROM tensorflow/tensorflow

ENV DISPLAY :0 

RUN apt-get update && \
    apt-get install -y dvipng python-tk texlive-latex-extra && \
    apt-get clean
