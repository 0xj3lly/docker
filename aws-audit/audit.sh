#!/bin/bash
scout --provider aws --profile $1 --report-dir /output --report-name $1 
/prowler/prowler -q -p $1 |& tee /output/$1.prowler
