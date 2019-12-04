#!/bin/sh -ex
yum install -y rpm-build
sed -e "s/TRAVIS_TAG/$TRAVIS_TAG/" /src/alice-system-deps.spec > versioned.spec
rpmbuild -bb versioned.spec
cp /root/rpmbuild/RPMS/x86_64/alice-system-deps-$TRAVIS_TAG-1.x86_64.rpm /output
