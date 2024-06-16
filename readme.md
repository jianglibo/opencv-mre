## vcpkg

```sh
vcpkg new --application
```
cd vcpkg
git pull
./bootstrap-vcpkg.sh


vcpkg x-update-baseline

## Caveat 

Where vcpkg stay matters. At the root of the project is the best choice.


## profile

nsys profile --output=my_profile_report --force-overwrite true ./build/opencvmre 

