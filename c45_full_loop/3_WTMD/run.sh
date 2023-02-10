#source /project/andrewferguson/Nick/plumed2-2.8.0/plumedpath.sh
#source /project/andrewferguson/Nick/gromacs-2021.1/installed-files/bin/GMXRC
#source /project/andrewferguson/Nick/plumed2/plumedpath.sh
source /project/andrewferguson/Nick/gromacs-2021.1/installed-files/bin/GMXRC
export OMP_NUM_THREADS=5
plumedFile=plumed_parameterized.dat

export PATH="/project/andrewferguson/Nick/plumed2/installed-files/bin:$PATH"
export LD_LIBRARY_PATH="/project/andrewferguson/Nick/plumed2/installed-files/lib:$LD_LIBRARY_PATH"
module load openmpi/4.1.2+gcc-7.4.0
module load gsl
module load cuda/11.2
module load python

gmx mdrun -ntomp $OMP_NUM_THREADS -s md_30ns.tpr -pin on -deffnm biased-r1 -plumed $plumedFile
