time openstack overcloud deploy \
    --templates /usr/share/openstack-tripleo-heat-templates/ \
    -e ~/templates/overcloud_images.yaml \
    -e ~/templates/node-config.yaml
