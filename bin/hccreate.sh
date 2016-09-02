#!/bin/sh

gcloud compute instances create homebase --image dev-ubuntu16-04-1-xerus --disk name=hc-sourcefiles-uc1b,mode=rw --machine-type=g1-small
