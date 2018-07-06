# MLR-Gateway-Docker
Docker configuration to deploy the MLR-Gateway service in a Docker container 

[![Build Status](https://travis-ci.org/USGS-CIDA/MLR-Gateway-Docker.svg?branch=master)](https://travis-ci.org/USGS-CIDA/MLR-Gateway-Docker) [![Coverage Status](https://coveralls.io/repos/github/USGS-CIDA/MLR-Gateway-Docker/badge.svg?branch=master)](https://coveralls.io/github/USGS-CIDA/MLR-Gateway-Docker?branch=master)

## Using Docker
To build the image you will need to provide the location of the jar within 
https://cida.usgs.gov/artifactory/mlr-maven/gov/usgs/wma/mlrgateway as follows:
``` 
% docker build --build-arg=0.1-SNAPSHOT/mlrgateway-0.1-SNAPSHOT.jar .
```

To run the image, you will need to provide as environment variables the substitution variables in the application.yml. The application
will be available on part 8080 within the container.