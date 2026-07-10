FROM mongo:4

ENV TZ="America/Moncton"

COPY ./build /build

# CMD ["--config", "/build/conf/mongod.custom.conf"]

LABEL ca.unb.lib.generator="mongodb" \
  org.opencontainers.image.title="unbgeology.mongodb.lib.unb.ca" \
  org.opencontainers.image.description="unbgeology.mongodb.lib.unb.ca is the mongodb application serving drupal instances at UNB Libraries." \
  org.opencontainers.image.vendor="University of New Brunswick Libraries" \
  org.opencontainers.image.authors="UNB Libraries <libsupport@unb.ca>" \
  org.opencontainers.image.source="https://github.com/unb-libraries/unbgeology.mongodb.lib.unb.ca" \
  org.opencontainers.image.version="$VERSION" \
  org.opencontainers.image.revision="$VCS_REF" \
  org.opencontainers.image.created="$BUILD_DATE"
