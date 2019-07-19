#!/bin/sh

USER_ID=${UID:-1001}
GROUP_ID=${GID:-1001}

echo "Starting with UID : $USER_ID, GID: $GROUP_ID"
addgroup -g ${GROUP_ID} user
adduser -D -u ${USER_ID} -G user user
export HOME=/home/user

exec /sbin/su-exec user "$@"
