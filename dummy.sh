#!/bin/bash
#
#PBS -q home
#PBS -N dummy
#PBS -l nodes=1:ppn=1
#PBS -l walltime=1:00:00
#PBS -o dummy.stdout
#PBS -V
#PBS -m abe
#PBS -j oe

# If you want to receive email notification for job run's start and termination,
# put this above: #PBS -M <your_email_address>

cd $PBS_O_WORKDIR

source /etc/profile.d/modules.sh

module load python

python3 dummy.py

exit 0
