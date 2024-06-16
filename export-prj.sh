#/bin/bash

# Export the project to a zip file, exclude vcpkg and build directories
# USING SINGLE QUOTES TO AVOID EXPANSION OF WILDCARDS
zip -x 'vcpkg/*' -x 'build/*' -r opencv-mre.zip . 

# create tar.gz file
# tar -czvf opencv-mre.tar.gz . -X exclude-list.txt

# tar --exclude='vcpkg' --exclude 'build' -zcvf opencv-mre.tar.gz .
