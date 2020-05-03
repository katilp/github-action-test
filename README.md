# Docker action test

From [Github actions instructions](https://help.github.com/en/actions/building-actions/creating-a-docker-container-action)

This action pulls the slc5 container with the CMSSW_4_2_8 release are installed. The action is triggered by the owner starring the repo.

## Inputs

### `file-name`

**Required** The name of the file to inspect. Default `"root://eospublic.cern.ch//eos/opendata/cms/hidata/HIRun2011/HIHighPt/RECO/15Apr2013-v1/110000/10EF1D2D-77B4-E211-A652-003048F1C494.root"`.

### `CMSSW_VERSION`

**Required**  Default `"CMSSW_4_2_8"`. Does not make much sense here as it is the only release arae available in the image...

## Outputs

### `time`

The time of the run (just a trial).

### `another_output`

Another trial.


