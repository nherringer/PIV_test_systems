import numpy as np
#import mdtraj as md
import pandas as pd
r0_PIVs = pd.read_csv("PIV_representation_traj.dat", delim_whitespace="tab", header=None)
#test = r0_PIVs.drop(np.arange(501))
np.save("PIV_r0_50k.npy", r0_PIVs)
