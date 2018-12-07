#!/bin/bash

exec openstack overcloud deploy \
        --templates /usr/share/openstack-tripleo-heat-templates \
        -e templates/overcloud_images.yaml \
        -n templates/environments/network_data.yaml \
        -e templates/environments/network-isolation.yaml \
        -e /usr/share/openstack-tripleo-heat-templates/environments/network-environment.yaml \
        -e templates/environments/network-environment.yaml \
        -e templates/environments/net-bond-with-vlans.yaml \
        -e templates/node-config.yaml \
        -e templates/inject-trust-anchor-hiera.yaml \
        -e /usr/share/openstack-tripleo-heat-templates/environments/ceph-ansible/ceph-ansible-external.yaml \
        -e templates/ceph-external.yaml \
        -e templates/HostnameMap.yaml \
        -e templates/ips-from-pool-all.yaml

