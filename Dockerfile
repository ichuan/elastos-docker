
# https://github.com/elastos/Elastos.ELA/blob/master/docs/Exchange_Docking_Reference.md

FROM openjdk:8-jre

WORKDIR /opt
VOLUME /opt/elastos
EXPOSE 8989

RUN wget https://github.com/elastos/Elastos.ELA.Utilities.Java/releases/download/v0.2.2/Elastos.ELA.Utilities.Java.jar
RUN wget https://download.elastos.org/elastos-ela/elastos-ela-v0.3.7/elastos-ela-v0.3.7-linux-x86_64.tgz -O - | tar --strip-components 1 -xzf -
COPY ./config.json ./java-config.json /opt/

COPY ./entrypoint.sh /opt/
RUN chmod +x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]
