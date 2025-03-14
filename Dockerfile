FROM mongo:8.0.5
ENV TZ America/Moncton

COPY ./build /build
RUN mv /build/scripts /scripts && \
  mv /build/docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d

CMD ["--replSet", "rs0"]

LABEL ca.unb.lib.generator="mongodb" \
  com.microscaling.docker.dockerfile="/Dockerfile" \
  com.microscaling.license="MIT" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.description="unbgeology.mongodb.lib.unb.ca is the mongodb application serving drupal instances at UNB Libraries." \
  org.label-schema.name="unbgeology.mongodb.lib.unb.ca" \
  org.label-schema.schema-version="1.0" \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/unb-libraries/unbgeology.mongodb.lib.unb.ca" \
  org.label-schema.vendor="University of New Brunswick Libraries" \
  org.label-schema.version=$VERSION \
  org.opencontainers.image.source="https://github.com/unb-libraries/unbgeology.mongodb.lib.unb.ca"
