FROM usgswma/wma-spring-boot-base:8-jre-slim

LABEL maintaner="gs-w_eto@usgs.gov"

ENV repo_name=mlr-maven-centralized
ENV artifact_id=mlrgateway
ENV artifact_version=0.4.6-SNAPSHOT
ENV requireSsl=true
ENV serverPort=8443
ENV mlrgateway_springFrameworkLogLevel=info
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
ENV maintenanceRoles='default roles'
ENV dbConnectionUrl=postgresUrl
ENV dbUsername=mlr_db_username
ENV oauthClientId=client-id
ENV oauthClientAccessTokenUri=https://example.gov/oauth/token
ENV oauthClientAuthorizationUri=https://example.gov/oauth/authorize
ENV oauthResourceTokenKeyUri=https://example.gov/oauth/token_key
ENV oauthResourceId=resource-id
ENV HEALTHY_RESPONSE_CONTAINS='{"status":"UP"}'

RUN ./pull-from-artifactory.sh ${repo_name} gov.usgs.wma ${artifact_id} ${artifact_version} app.jar
