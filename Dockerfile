# Copyright (C) 2018 Sebastian Pipping <sebastian@pipping.org>
# Licensed under the MIT license

FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
        && \
    apt-get --yes dist-upgrade \
        && \
    apt-get install --no-install-recommends --yes -V \
        lazygal \
        lighttpd

COPY htdocs             /var/www/html/
COPY entrypoint.bash    /root/
COPY lazygal.conf.json  /root/.lazygal/config

# Sync gallery (and run appended CMD, if any)
RUN ["/root/entrypoint.bash"]
ENTRYPOINT ["/root/entrypoint.bash"]

# Serve website
EXPOSE 80
CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
