#!/bin/sh

gcloud compute instances create homebase --image-family ubuntu-homebase --disk name=hc-sourcefiles-uc1b,mode=rw --machine-type f1-micro --min-cpu-platform "Intel Skylake"
