# Aqua CSP Integration Samples

* [Azure scanner pipeline](#azure-scanner-pipeline-sample)
* [Gitlab scanner pipeline](#gitlab-scanner-pipeline-sample)
* Serverless scanner pipeline
* [Count AWS Resources](#count-aws-resources)

## Azure scanner pipeline sample

This sample uses the following service connections:
- A Docker Registry Service Connection called aqua-register
- A Generic Service Connection called demo-aqua

More information about [Service connections](https://docs.microsoft.com/en-us/azure/devops/pipelines/library/service-endpoints?view=azure-devops&tabs=yaml) in Azure.

More details about [aqua azure DevOps Extension for Image Scanning](https://docs.aquasec.com/docs/azure-devops-image-scanning-integration#use-the-extension-to-scan-images)

## Gitlab scanner pipeline sample

This sample use the following environments in Gitlab:

- docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD" $CI_REGISTRY

- To interact with the CSP
platform:  --host $AQUA_HOST --user $AQUA_USER --password  $AQUA_PASSWORD

https://docs.gitlab.com/12.10/ee/ci/variables/

## Count Aws Resources
`sh aws/aws-resource.count.sh`