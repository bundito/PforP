# CMake generated Testfile for 
# Source directory: /home/bundito/projects/PforP/processing
# Build directory: /home/bundito/projects/PforP/build-processing-Desktop-Default
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(appstreamtest "/usr/bin/cmake" "-DAPPSTREAMCLI=/usr/bin/appstreamcli" "-DINSTALL_FILES=/home/bundito/projects/PforP/build-processing-Desktop-Default/install_manifest.txt" "-P" "/usr/share/ECM/kde-modules/appstreamtest.cmake")
