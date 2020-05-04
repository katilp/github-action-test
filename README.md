# Docker action test

From [Github actions instructions](https://help.github.com/en/actions/building-actions/creating-a-docker-container-action)

This workflow uses an action to pull [the slc5 container with the CMSSW_4_2_8 release installed](https://gitlab.cern.ch/clange/cmssw-docker/container_registry), and to build another container on top of it. An OD file is inspected and an output file produced. It is passed as an artifact. 

Because of the default volume mount and home directory settings for the `docker run` command in github actions the following changes were required:
 - change to `/home/cmsusr` before building the CMSSW release area in Entrypoint
 - change owner to `cmsusr` for `/github/worspace` so that the output file can be passed as an artifact

The workflow is triggered by the owner starring the repo.

## Inputs

### `file-name`

**Required** The name of the file to inspect. Default `"root://eospublic.cern.ch//eos/opendata/cms/hidata/HIRun2011/HIHighPt/RECO/15Apr2013-v1/110000/10EF1D2D-77B4-E211-A652-003048F1C494.root"`.

### `CMSSW_VERSION`

**Required**  Default `"CMSSW_4_2_8"`. Does not make much sense here as it is the only release area available in the image, but could be used if passed also to the base image name.

## Outputs

### `time`

The time of the run (just a trial).

### `another_output`

Output file name. 

## Artifacts

The output of edmProvDump.


