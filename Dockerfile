FROM centos:7
USER root

# Install epel-release
RUN yum install epel-release && \
    rpm -v --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro && \
    rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm

# Install ffmpeg ffmpeg-devel
RUN yum install ffmpeg ffmpeg-devel && \
    ffmpeg -version

USER default
