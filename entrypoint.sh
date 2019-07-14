#!/bin/sh

USER_ID=${UID:-1001}
GROUP_ID=${GID:-1001}

echo "Starting with UID : $UID, GID: $GID"
addgroup -g ${GID} user
adduser -D -u ${UID} -G user user
export HOME=/home/user

exec /sbin/su-exec user "$@"
