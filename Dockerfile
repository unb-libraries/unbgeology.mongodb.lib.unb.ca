FROM mongo:6.0
MAINTAINER UNB Libraries <libsupport@unb.ca>

ENV TZ America/Moncton

COPY ./build /build

# CMD ["--config", "/build/conf/mongod.custom.conf"]

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
