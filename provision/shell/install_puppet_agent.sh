#!/bin/bash                                                                                                                       
puppet --version &> /dev/null

wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb -O /tmp/puppetlabs-release-pc1-trusty.deb
dpkg -i /tmp/puppetlabs-release-pc1-trusty.deb
apt-get update
apt-get -y install puppet-agent
echo Puppet Agent installed
export PATH=$PATH:/opt/puppetlabs/bin
puppet --version
echo start Puppet Agent
/opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
