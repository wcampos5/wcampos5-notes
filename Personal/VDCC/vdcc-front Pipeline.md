Un-comment namespace and renamed from vdcc3-ext to vdcc
notify-promote-completion-to-slack finally task removed due to slack channel issues
Removed notify-completion-to-slack task when $(params.environment) in "dev" operator
Add --loglevel verbose to npm rum default params
Add sonarScannerImage block in the params

Tasks:
Removed notify-promote-start-to-slack task
Removed notify-start-to-github task when $(params.environment) in "dev" operator
node-sonarqube task image value modifiied
node-sonarqube run order changed
npm-build cliParams and takImage values changed
imageBuild taskRef name updated from sdt-sdt-buildah to vdcc-buildah-task
quay-to-gar taskRef name updated from sdt-sdt-quay-to-gar to vdcc-quay-to-gar-task

