# Thermocapillary Overlay Template for TCLB [![](https://img.shields.io/badge/use%20this-template-blue?logo=github)](https://github.com/new?template_name=TCLB_overlay&template_owner=CFD-GO)

This is a template repository for a overlay repository for [TCLB Solver](https://github.com/CFD-GO/TCLB). Kind of a layer you can put on top of the TCLB's repository to allow you to develop and share your models or cases in your own repo, without the "baggage" of the main repo.

This Overlay is specifically for the thermocapillary extension to the three-dimensional phase-field LBM model (d3q27_pf_velocity)[https://github.com/CFD-GO/TCLB/tree/master/models/multiphase/d3q27_pf_velocity].

## How to use
After you create your own repository from this template you can:
```bash
git clone git@github.com:TravisMitchell/thermocapillary.git
cd thermocapillary
./update.sh
```

The update `script.sh` will checkout all the files of the TCLB solver and the two repositories (TCLB, and your overlay) will share the same directory. You can operate on your repository with the standard `git` commands with:
```bash
make configure
./configure < use required TCLB options for compiling on your system e.g., --enable-double --with-cuda-arch=sm_60 >
make -j4 d3q27_pf_thermo
make -j4 d3q27_pf_thermo_planarBenchmark
```

With these two models, you should be able to recreate all cases reported in [Computational modeling of three-dimensional thermocapillary flow of recalcitrant bubbles using a coupled lattice Boltzmann-finite difference method](https://doi.org/10.1063/5.0038171) and provided in the cases/ folder of this repository.