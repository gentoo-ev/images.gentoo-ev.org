# Copyright (C) 2018 Sebastian Pipping <sebastian@pipping.org>
# Licensed under the MIT license

FROM debian:stretch-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
        && \
    apt-get --yes dist-upgrade \
        && \
    apt-get install --no-install-recommends --yes -V \
        gatling \
        lazygal

COPY htdocs             /var/www/default/
COPY entrypoint.bash    /root/
COPY lazygal.conf.json  /root/.lazygal/config

# Sync gallery (and run appended CMD, if any)
RUN ["/root/entrypoint.bash"]
ENTRYPOINT ["/root/entrypoint.bash"]

# Serve website
# -F        no FTP
# -S        no Samba
# -d        enable directory listings
# -c <DIR>  change into and serve directory <DIR>
EXPOSE 80
CMD ["gatling", "-F", "-S", "-d", "-c", "/var/www/default"]
