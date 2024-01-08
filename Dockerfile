FROM docker.io/archlinux:base-devel

COPY mirrorlist /ect/pacman/mirrorlist

RUN pacman-key --init && pacman -Syu --noconfirm

EXPOSE 22 80 443 3389 8000 8001 8080

CMD ["/usr/sbin/init"]

