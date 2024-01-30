ADJOINT=0
TEST=FALSE
OPT="(q27 + OutFlow  + BGK + thermo*planarBenchmark)*autosym"
# q27 - Q27 lattice structure for phasefield
#
# OutFlow - include extra velocity stencil for outflowing boundaries
#
# BGK - single relaxation time operator, not really supported- educational purposes only
#
# thermo - include energy equation solver for temperature field, influences through
#        - the surface tension
#
# planarBenchmark - thermocapillary benchmark case, must be built with thermo
#
# autosym - symmetry boundary conditions