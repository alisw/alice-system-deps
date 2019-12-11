#!/bin/sh -ex
yum install -y rpm-build
# Dummy default value for testing PRs. It will not be uploaded
TRAVIS_TAG=${TRAVIS_TAG:-0.0.1}

sed -e "s/TRAVIS_TAG/$TRAVIS_TAG/" /src/alice-system-deps.spec > versioned.spec
rpmbuild -bb versioned.spec
yum install -y /root/rpmbuild/RPMS/x86_64/alice-system-deps-$TRAVIS_TAG-1.x86_64.rpm
cp /root/rpmbuild/RPMS/x86_64/alice-system-deps-$TRAVIS_TAG-1.x86_64.rpm /output
