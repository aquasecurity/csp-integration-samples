# Aqua CSP Integration Samples

* [Azure scanner pipeline](##Azure-scanner-pipeline)
* Gitlab scanner ipeline
* Serverless scanner pipeline
* Sidecar on AWS Fargate

## Azure scanner pipeline sample

This sample use the following service connections:
- A Docker Registry Service Connection called aqua-register
- A Generic Service Connection called demo-aqua

More information about [service connection](https://docs.microsoft.com/en-us/azure/devops/pipelines/library/service-endpoints?view=azure-devops&tabs=yaml) in Azure.

More details about [aqua azure DevOps Extension for Image Scanning](https://docs.aquasec.com/docs/azure-devops-image-scanning-integration#use-the-extension-to-scan-images)