#!/bin/ash
# shellcheck shell=dash

oauthClientSecret=${oauthClientSecret:?}
dbPassword=${dbPassword:?}
keystorePassword=${keystorePassword:?}

if [ -f "$HOME/app.jar" ]; then
  java -Djava.security.egd=file:/dev/./urandom -DoauthClientSecret=$oauthClientSecret -DkeystorePassword=$keystorePassword -DdbPassword=$dbPassword -jar $HOME/app.jar "$@"
else
    echo "No $HOME/app.jar found. Exiting."
    exit 1
fi
