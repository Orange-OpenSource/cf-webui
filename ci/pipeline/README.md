# CF-WebUi Concourse pipeline
This directory contains a very simple integration pipeline for [Concourse CI](https://concourse.ci/).
It is a one job pipeline (compilation and deployment to CF).

## Pre-requisite
 - a running concourse instance ([installing concourse ](https://concourse.ci/installing.html))
 - a concourse CLI ([The Fly CLI](https://concourse.ci/fly-cli.html))

## Install cf-web-ui pipeline
 1. update credentials-cf-webui-template.yml (at least with your CF info)
 1. push the pipeline from project root directory:
    ```
    fly -t <concourse-target> set-pipeline --config ci/pipeline/pipeline.yml --pipeline cf-webui -l ci/pipeline/credentials-cf-webui-template.yml
    ```
 1. enable the pipeline
    ```
     fly -t <concourse-target> unpause-pipeline --pipeline cf-webui

    ```

