#!/bin/bash
scout --provider aws --profile $1 --report-dir /output --report-name $1 
/prowler/prowler -q -p $1 -f "eu-west-1 eu-west-2 us-east-1" |& tee /output/$1.prowler
