#!/bin/sh
set -e

if [ -n "${OAUTH_CLIENT_SECRET_PATH}" ] && [ -f "${OAUTH_CLIENT_SECRET_PATH}" ]; then
  oauthClientSecret=$(cat ${OAUTH_CLIENT_SECRET_PATH})
  else
  	echo "oauthClientSecret is not defined"
  	exit 1
fi

if [ $dbPassword ]; then
    MYSQL_PASSWORD_VAL=$dbPassword
elif [ $dbPassword_file ]; then
    MYSQL_PASSWORD_VAL=`cat $dbPassword_file`
fi

java -Djava.security.egd=file:/dev/./urandom -DoauthClientSecret=$oauthClientSecret -DkeystorePassword=$keystorePassword -DdbPassword=$MYSQL_PASSWORD_VAL -jar app.jar $@

exec env "$@"
