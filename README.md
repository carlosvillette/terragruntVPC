# terragruntVPC
This is a demo of using terragrunt to make 2 vpc's ( staging and dev ) at the same time.

## modules/vpc

This contains the modulized version of the vpc to be used for the project.

## live-v1

This contains the staging and dev vpc using modules but without terragrunt as a comparison.

## live-v2

This contains the staginh and dev vpc that can be triggered using terragrunt.  
Run this command under the live-v2/ directory to build both vpc's in both regions:  
> `terragrunt run-all apply`

Run this command to destroy both vpc's at the same time:  
> `terragrunt run-all destroy`