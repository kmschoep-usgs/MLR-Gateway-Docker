# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html). (Patch version X.Y.0 is implied if not specified.)

## [Unreleased]
### Added
- isuftin@usgs.gov - maintainer label in Dockerfile
- isuftin@usgs.gov - health check label in Dockerfile
- isuftin@usgs.gov - spring user ENV vars in Dockerfile
- kmschoep@usgs.gov - Dockerfile
- kmschoep@usgs.gov - Reference to Docker usage in Readme
- kmschoep@usgs.gov - docker-compose.env
- kmschoep@usgs.gov - docker-compose.yml
- kmschoep@usgs.gov - launch-app.sh
- kmschoep@usgs.gov - tomcat-wildcard-dev.crt
- kmschoep@usgs.gov - tomcat-wildcard-dev.csr
- kmschoep@usgs.gov - tomcat-wildcard-dev.key
- kmschoep@usgs.gov - oauthClientSecret.txt

### Changed
- isuftin@usgs.gov - Moved lines around in Dockerfile
- isuftin@usgs.gov - keystoreLocation env var changed to pkcs12
- isuftin@usgs.gov - Commented out travis test to check for running container.
  This container does not yet run properly
- kmschoep@usgs.gov - Dockerfile to match pattern set by AQCU dockerfiles
- kmschoep@usgs.gov - launch-app.sh to improve error handling
- kmschoep@usgs.gov - removed docker-compose.yml, replaced with config.env and secrets.env

### Removed
- kmschoep@usgs.gov - docker-entrypoint.sh
- kmschoep@usgs.gov - Dockerfile-DOI
