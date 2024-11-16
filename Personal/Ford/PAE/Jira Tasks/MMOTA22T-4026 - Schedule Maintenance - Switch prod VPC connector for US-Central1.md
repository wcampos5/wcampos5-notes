## Description
Jira: [#4026](https://ford.atlassian.net/browse/MMOTA22T-4026)

## Changes Made
- Changes applied to .tekton/prognosticscrservices-pipelinerun.yaml to use ci-cd repo instead of Tekton Namespace tasks to the deployment process.
- Removed unused Kafka libraries from build.gradle
- Removed unused Kafka property from application.properties
- Updated the VPC Connector as per Dev Enablement Ford´s team request.

## Related Issues
Applicable for Jira Tasks:
[#4025 - Oil Life Feature](https://ford.atlassian.net/browse/MMOTA22T-4025)
[#4024 - Telemetry](https://ford.atlassian.net/browse/MMOTA22T-4024)
## Checklist
- [ x ] I have tested these changes locally
- [ x ] I have added/updated tests where necessary
- [ x ] I have executed testing on lower environments