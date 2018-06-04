FROM postgres:10.3

RUN localedef -i et_EE -c -f UTF-8 -A /usr/share/locale/locale.alias et_EE.UTF-8

RUN apt-get update && \
    apt-get install -y git make flex bison gcc postgresql-server-dev-10
RUN git clone https://github.com/postgrespro/jsquery.git && \
    chown postgres:postgres jsquery && \
    cd jsquery && \
    su postgres -c 'alias yacc=bison && make USE_PGXS=1' && \
    make USE_PGXS=1 install
