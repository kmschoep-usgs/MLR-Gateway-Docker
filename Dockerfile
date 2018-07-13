FROM cidasdpdasartip.cr.usgs.gov:8447/wma/wma-spring-boot-base:latest

ENV repo_name=mlr-maven-centralized
ENV artifact_id=mlrgateway
ENV artifact_version=0.4.0-SNAPSHOT
RUN ./pull-from-artifactory.sh ${repo_name} gov.usgs.wma ${artifact_id} ${artifact_version} app.jar

ADD launch-app.sh launch-app.sh
RUN ["chmod", "+x", "launch-app.sh"]

#Default ENV Values
ENV serverPort=443
ENV mlrgateway_ddotServers=http://localhost:6028
ENV mlrgateway_legacyTransformerServers=http://localhost:6020
ENV mlrgateway_legacyValidatorServers=http://localhost:6027
ENV mlrgateway_legacyCruServers=http://localhost:6010
ENV mlrgateway_fileExportServers=http://localhost:6024
ENV mlrgateway_notificationServers=http://localhost:6025
ENV ribbonMaxAutoRetries=0
ENV ribbonConnectTimeout=6000
ENV ribbonReadTimeout=60000
ENV hystrixThreadTimeout=10000000
ENV oauthClientId=client-id
ENV oauthClientAccessTokenUri=https://example.gov/oauth/token
ENV oauthClientAuthorizationUri=https://example.gov/oauth/authorize
ENV oauthResourceTokenKeyUri=https://example.gov/oauth/token_key
ENV oauthResourceId=resource-id

ENV OAUTH_CLIENT_SECRET_PATH=/oauthClientSecret.txt

ENV HEALTHY_RESPONSE_CONTAINS='{"status":"UP"}'
