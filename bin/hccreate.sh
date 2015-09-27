#!/bin/sh

gcloud compute instances create homebase --image dev-ubuntu15-vivid --disk name=hc-sourcefiles-uc1b,mode=rw --machine-type=g1-small
