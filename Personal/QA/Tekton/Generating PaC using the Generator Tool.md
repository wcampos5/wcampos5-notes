
#tekton #tknpacgen #generator


### What is EcoBoost Tekton-PaC Pipeline?

Pipelines as Code (PaC) pipeline is different than previous versions of EcoBoost Tekton pipeline, refer to this [Dev Guide](https://github.ford.com/DevEnablement/ecoboost-tekton-pipeline#ecoboost-tekton-pac-pipeline).

### Important notes before using Pipeline Generator tool:

- Person creating or updating pipeline needs to have Admin role in OpenShift Tekton namespace.
- CDS ID owning the provided GitHub PAT needs Admin role in the repository.
- GitHub PAT needs to have the following composite scopes: repo, admin:repo_hook, and additionally admin:org for GitHub Enterprise.
- GitHub Cloud PAT needs to be SSO configured with the Organization where the repository is created. [Click here](https://github.com/settings/tokens) to configure SSO.
- GitHub App for Tekton needs to have access to code repository.

### Dependencies

Changes in application's build.gradle and pipeline configuration files, are required for the new EcoBoost Tekton PaC pipeline v4.1.0 to function. [Click here](https://github.ford.com/DevEnablement/ecoboost-tekton-pipeline/blob/master/migration/Pipeline_Version_Migration_Steps.md) for step-by-step instructions.