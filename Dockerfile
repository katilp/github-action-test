# Container image that runs your code
# FROM debian:9.5-slim
# FROM gitlab-registry.cern.ch/clange/cmssw-docker/slc5-cms:latest
FROM gitlab-registry.cern.ch/cms-cloud/cmssw-docker/cmssw_3_9_2_patch5-slc5_amd64_gcc434:2020-11-17-e0b0b7a6

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Executes `entrypoint.sh` when the Docker container starts up 
ENTRYPOINT ["/entrypoint.sh"]
