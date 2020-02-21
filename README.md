# Welcome to Nuage Academy

### Please apply the following commands in user data while launch the EC2 instance.

#### Please apply the following commands if you are launching the centos.

#!/bin/bash

yum update -y

yum install git -y

git clone https://github.com/cvragavan/NuageAcademy.git

cd NuageAcademy

sh installs_httpd_centos.sh

#### Please apply the following commands if you are launching the redhat.

#!/bin/bash

yum update -y

yum install git -y

git clone https://github.com/cvragavan/NuageAcademy.git

cd NuageAcademy

sh installs_httpd_redhat.sh

#### Please apply the following commands if you are launching the ubuntu.

#!/bin/bash

yum update -y

yum install git -y

git clone https://github.com/cvragavan/NuageAcademy.git

cd NuageAcademy

sh installs_httpd_ubuntu.sh


