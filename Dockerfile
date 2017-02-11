# vim:set ft=dockerfile:
FROM ubuntu:xenial
MAINTAINER Christian Hotz-Behofsits <christian.hotz-behofsits@wu.ac.at>

RUN apt-get -qqy update
RUN apt-get install -y -q software-properties-common
RUN add-apt-repository ppa:marutter/rrutter
RUN apt-get -qqy update
RUN apt-get install -y -q r-base r-base-dev wget gdebi-core

RUN (wget http://download2.rstudio.org/rstudio-server-1.0.136-amd64.deb && gdebi -n rstudio-server-1.0.136-amd64.deb)
RUN rm rstudio-server-*-amd64.deb

#TODO: add users

CMD ["/usr/lib/rstudio-server/bin/rserver", "--server-daemonize=0", "--server-app-armor-enabled=0"]
