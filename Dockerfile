FROM ubuntu:18.04

MAINTAINER John Michael Egana <johnmichael.egana@protonmail.com>

RUN apt-get -yqq update
RUN apt-get -yqq install wget tar
RUN wget https://github.com/CompEvol/beast2/releases/download/v2.6.7/BEAST_with_JRE.v2.6.7.Linux.tgz
RUN tar zxvf BEAST_with_JRE.v2.6.7.Linux.tgz

RUN rm -f BEAST_with_JRE.v2.6.7.Linux.tgz

ENV PATH="/beast/bin:$PATH"

RUN packagemanager -add PhyDyn


