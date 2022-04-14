# Aqua CSP Integration Samples

# Content

* [Image Scanning](#image-scanning)
  * [Jenkins pipeline](#jenkins-scanner-pipeline-sample)
  * [Azure pipeline](#azure-scanner-pipeline-sample)
  * [Gitlab pipeline](#gitlab-scanner-pipeline-sample)
  * [Github Action pipeline](#github-action-pipeline-sample)
* Serverless scanner pipeline
* [Count AWS Resources](#count-aws-resources)
* Enforcer
  * [Service Fabric Windows hosts via custom extension](./service-fabric-install/ServiceFabricInstall.ps1)

## Image Scanning
### Jenkins scanner pipeline sample

[See sample file](./aqua-scanner/mongo.pipeline)

> On-premise https://docs.aquasec.com/docs/jenkins-image-scanning-integration
> SaaS https://support.aquasec.com/support/solutions/articles/16000121457-jenkins-integration
### Azure scanner pipeline sample

This sample uses the following service connections:
- A Docker Registry Service Connection called aqua-register
- A Generic Service Connection called demo-aqua

[See sample file](azure-pipelines.yml)

More information about [Service connections](https://docs.microsoft.com/en-us/azure/devops/pipelines/library/service-endpoints?view=azure-devops&tabs=yaml) in Azure.

More details about [aqua azure DevOps Extension for Image Scanning](https://docs.aquasec.com/docs/azure-devops-image-scanning-integration#use-the-extension-to-scan-images)

### Gitlab scanner pipeline sample

This sample use the following environments in Gitlab:

- docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD" $CI_REGISTRY

- To interact with the CSP
platform:  --host $AQUA_HOST --user $AQUA_USER --password  $AQUA_PASSWORD

[See sample file](.gitlab-ci.yml)

https://docs.gitlab.com/12.10/ee/ci/variables/

### Github Action pipeline sample

[See sample file](.github/workflows/scanner.yaml)
## CSPM
### Count Aws Resources
`sh aws/aws-resource.count.sh`