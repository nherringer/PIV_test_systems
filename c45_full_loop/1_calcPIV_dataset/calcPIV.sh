#!/bin/bash

#plumed driver --plumed plumed_calcPIV.dat --mf_xtc md.xtc >& out.out
plumed driver --plumed plumed_calcPIV.dat --mf_xtc md_whole.xtc >& out.out

sed -i '/#END OF FRAME/d' PIV_representation_traj.dat

# Remove first 501 frames and convert to numpy file for AE training
python3 try.py
