help([==[

Description
===========
preCICE is an open-source coupling library for partitioned multi-physics simulations, including, but not restricted to fluid-structure interaction and conjugate heat transfer simulations.
Partitioned means that preCICE couples existing programs/solvers capable of simulating a subpart of the complete physics involved in a simulation. This allows for the high flexibility that is needed to keep a decent time-to-solution for complex multi-physics scenarios.


More information
================
 - Homepage: https://precice.org/
]==])


whatis([==[Description: preCICE is an open-source coupling library for partitioned multi-physics simulations, including, but not restricted to fluid-structure interaction and conjugate heat transfer simulations.]==])
whatis([==[Version: 3.1.2]==])
whatis([==[Homepage: https://precice.org/]==])

local root = "/home/users/mghavami/precice-install/"

-- conflict("math/SCOTCH")

if not ( isloaded("devel/CMake/3.20.1-GCCcore-10.2.0") ) then
    load("devel/CMake/3.20.1-GCCcore-10.2.0")
end

if not ( isloaded("mpi/OpenMPI/4.0.5-GCC-10.2.0") ) then
    load("mpi/OpenMPI/4.0.5-GCC-10.2.0")
end

if not ( isloaded("numlib/PETSc/3.14.4-foss-2020b") ) then
    load("numlib/PETSc/3.14.4-foss-2020b")
end

if not ( isloaded("lang/Python/3.8.6-GCCcore-10.2.0") ) then
    load("lang/Python/3.8.6-GCCcore-10.2.0")
end

if not ( isloaded("math/Eigen/3.4.0-GCCcore-10.2.0") ) then
    load("math/Eigen/3.4.0-GCCcore-10.2.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
prepend_path("PATH", pathJoin(root, "bin"))

-- Built with EasyBuild version 4.4.1

