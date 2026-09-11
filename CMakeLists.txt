####
# This sets up the build system for the 'FprimeYamcsReference' project, including
# components and deployments from project.cmake. In addition, it imports the core F Prime components.
####

cmake_minimum_required(VERSION 3.24.2)
project(FprimeYamcsReference C CXX)

###
# F' Core Setup
# This includes all of the F prime core components, and imports the make-system.
###
include("${CMAKE_CURRENT_LIST_DIR}/lib/fprime/cmake/FPrime.cmake")
# NOTE: register custom targets between these two lines
# OpenSSL::Crypto backs Svc.Ccsds.AesGcmEncryptor/Decryptor; import it here so the deployment can link it
find_package(OpenSSL 3.0 REQUIRED)
fprime_setup_included_code()


# This includes project-wide objects
add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/FprimeYamcsReference")
