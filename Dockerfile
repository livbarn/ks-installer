FROM kubesphere/ks-installer:v2.1.1

RUN rm -rf /hooks/kubesphere/installRunner.py && \
    rm -rf /kubesphere/installer/roles && \
    rm -rf /kubesphere/playbooks && \
    rm -rf /kubesphere/results/env

ADD controller/installRunner.py /hooks/kubesphere
ADD roles /kubesphere/installer/roles
ADD env /kubesphere/results/env
ADD playbooks /kubesphere/playbooks
