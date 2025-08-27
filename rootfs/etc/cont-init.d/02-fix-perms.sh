#!/usr/bin/with-contenv sh
# shellcheck shell=sh
set -e

echo "Fixing perms..."
mkdir -p /data \
  /var/run/nginx \
  /var/run/php-fpm

chown librenms:librenms \
  /data \
  "${LIBRENMS_PATH}" \
  "${LIBRENMS_PATH}"/.env \
  "${LIBRENMS_PATH}"/cache \
  "${LIBRENMS_PATH}"/composer* \
  "${LIBRENMS_PATH}"/rrd \
  "${LIBRENMS_PATH}"/vendor \
  "${LIBRENMS_PATH}"/vendor/* \

chown -R librenms:librenms \
  /home/librenms \
  "${LIBRENMS_PATH}"/vendor/composer \
  /tpls \
  /var/lib/nginx \
  /var/log/nginx \
  /var/log/php83 \
  /var/run/nginx \
  /var/run/php-fpm
