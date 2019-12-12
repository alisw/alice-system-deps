These are minimum steps to have `aliBuild` ready:
1. `yum install http://..../RPMS/x86_64/alice-system-deps-v0.1.0-1.x86_64.rpm`
2. ```
yum install -y centos-release-scl
yum-config-manager --enable rhel-server-rhscl-7-rpms
yum install -y devtoolset-7
source scl_source enable devtoolset-7
```
3. `pip3 install aliBuild`
