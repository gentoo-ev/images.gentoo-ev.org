[![Build](https://github.com/gentoo-ev/images.gentoo-ev.org/actions/workflows/build.yml/badge.svg)](https://github.com/gentoo-ev/images.gentoo-ev.org/actions/workflows/build.yml)


# How to Build and Run (on Gentoo)

```console
# sudo emerge app-emulation/docker app-emulation/docker-compose
# sudo /etc/init.d/docker start
# docker network create --internal ssl-reverse-proxy
# docker-compose up -d --build
# chromium http://127.0.0.1:50380/ &
```

Enjoy :)


# License

- Image galleries: CC-BY-SA-4.0
- Build scripts, configuration, custom CSS: MIT

Gentoo is a trademark of Gentoo Foundation, Inc., New Mexico, USA
(USPTO registration number 2966511) and of Förderverein Gentoo e.V.,
Mainz, Germany (DPMA registration number 30546062, EUIPO registration
number 005275714). The [Gentoo Name and Logo Usage Guidelines][1] apply.

[1]: <https://www.gentoo.org/inside-gentoo/foundation/name-logo-guidelines.html>
