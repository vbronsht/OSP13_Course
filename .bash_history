606363
time ~/bin/overcloud-deploy.sh
openstack stack list
cat templates/inject-trust-anchor-hiera.yaml 
vi templates/inject-trust-anchor-hiera.yaml 
time ~/bin/overcloud-deploy.sh
vi templates/inject-trust-anchor-hiera.yaml 
jq . << EOF > ~/templates/inject-trust-anchor-hiera.yaml
parameter_defaults:
  CAMap:
    overcloud-ca:
      content: |
       -----BEGIN CERTIFICATE-----
MIIDjTCCAnWgAwIBAgIQaCqoPKhcQTq4IwpfWrKXkzANBgkqhkiG9w0BAQsFADBQ
MSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhvcml0eTEsMCoGA1UEAwwjNjgy
YWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3OTMwHhcNMTgxMjAzMTEwNjU5
WhcNMTkxMjAzMTEwNjU5WjBQMSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhv
cml0eTEsMCoGA1UEAwwjNjgyYWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3
OTMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvbF4iBna9U1ESswIF
UcD/rMFSYu2Fv5FGBOm2ZYxDw34TD1wxm2szW3je+v/P4cJgy2HYI363lrOj5kAQ
QfSUG7ChTWK/I9w3g6clkxJmViBV9Pr960vOQY2ZsQHoGkTFSCFouvTyk3H76L6b
i1GrUXHv3Rs47HZ/JGVv/ufkrqTAAXQ3pClerXc8GjZ77OZD9utp5bGFNnbowexz
xyZ9X8cghEUwi0H/URzrUA/m3KDYPIIn4Z4eU1VxbrwfpzxC62enQzkZSfGiPQQ7
812rHcAvB7qmTymu9/tVuTvn9EsP0l6tQO37+Z1LDvz+4wRSKaT+268hPw3+NNi6
EAd/AgMBAAGjYzBhMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAkkmWwuxuH5
5Y2qDBeAvpzPUjPLMB8GA1UdIwQYMBaAFAkkmWwuxuH55Y2qDBeAvpzPUjPLMA4G
A1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOCAQEAgvZX2iDS5OS++C4+uoY+
ZCAaBsdt/iv2d4GlAqnoXPCOFolKsmKW7LExniGvkIFLFNe66CZnchhGy/ztUsQX
Yc2yBSFC1X+WyJcybIEq4RAtETqFMljjA+UEJ4EdKqC861JYhmyCbWSS1i02qNYN
asDwG7cUr2yVOUBUsBRme/IgmcI6EAur2DAy2UEfJ2ZCr2gqeBYk06pYzHlMB8wF
mTcIFDIA92vtvYTWQuBq/dcFqI01LrW9MIjoHhLie0heUtsSNxp+rmonD+z9d/Tl
Oye0SNXV6HAPmQ8AeTbqk7nyyhE6KWN2L5vfYQmEr4Ulk1sbqwqtCLGfRpqjtMrn
3A==
       -----END CERTIFICATE-----
    undercloud-ca:
      content: |
       -----BEGIN CERTIFICATE-----
MIIDjTCCAnWgAwIBAgIQaCqoPKhcQTq4IwpfWrKXkzANBgkqhkiG9w0BAQsFADBQ
MSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhvcml0eTEsMCoGA1UEAwwjNjgy
YWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3OTMwHhcNMTgxMjAzMTEwNjU5
WhcNMTkxMjAzMTEwNjU5WjBQMSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhv
cml0eTEsMCoGA1UEAwwjNjgyYWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3
OTMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvbF4iBna9U1ESswIF
UcD/rMFSYu2Fv5FGBOm2ZYxDw34TD1wxm2szW3je+v/P4cJgy2HYI363lrOj5kAQ
QfSUG7ChTWK/I9w3g6clkxJmViBV9Pr960vOQY2ZsQHoGkTFSCFouvTyk3H76L6b
i1GrUXHv3Rs47HZ/JGVv/ufkrqTAAXQ3pClerXc8GjZ77OZD9utp5bGFNnbowexz
xyZ9X8cghEUwi0H/URzrUA/m3KDYPIIn4Z4eU1VxbrwfpzxC62enQzkZSfGiPQQ7
812rHcAvB7qmTymu9/tVuTvn9EsP0l6tQO37+Z1LDvz+4wRSKaT+268hPw3+NNi6
EAd/AgMBAAGjYzBhMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAkkmWwuxuH5
5Y2qDBeAvpzPUjPLMB8GA1UdIwQYMBaAFAkkmWwuxuH55Y2qDBeAvpzPUjPLMA4G
A1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOCAQEAgvZX2iDS5OS++C4+uoY+
ZCAaBsdt/iv2d4GlAqnoXPCOFolKsmKW7LExniGvkIFLFNe66CZnchhGy/ztUsQX
Yc2yBSFC1X+WyJcybIEq4RAtETqFMljjA+UEJ4EdKqC861JYhmyCbWSS1i02qNYN
asDwG7cUr2yVOUBUsBRme/IgmcI6EAur2DAy2UEfJ2ZCr2gqeBYk06pYzHlMB8wF
mTcIFDIA92vtvYTWQuBq/dcFqI01LrW9MIjoHhLie0heUtsSNxp+rmonD+z9d/Tl
Oye0SNXV6HAPmQ8AeTbqk7nyyhE6KWN2L5vfYQmEr4Ulk1sbqwqtCLGfRpqjtMrn
3A==
       -----END CERTIFICATE-----
EOF

vi templates/inject-trust-anchor-hiera.yaml 
jq . << EOF > ~/templates/inject-trust-anchor-hiera.yaml
parameter_defaults:
  CAMap:
    overcloud-ca:
      content: |
       -----BEGIN CERTIFICATE-----
MIIDjTCCAnWgAwIBAgIQaCqoPKhcQTq4IwpfWrKXkzANBgkqhkiG9w0BAQsFADBQ
MSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhvcml0eTEsMCoGA1UEAwwjNjgy
YWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3OTMwHhcNMTgxMjAzMTEwNjU5
WhcNMTkxMjAzMTEwNjU5WjBQMSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhv
cml0eTEsMCoGA1UEAwwjNjgyYWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3
OTMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvbF4iBna9U1ESswIF
UcD/rMFSYu2Fv5FGBOm2ZYxDw34TD1wxm2szW3je+v/P4cJgy2HYI363lrOj5kAQ
QfSUG7ChTWK/I9w3g6clkxJmViBV9Pr960vOQY2ZsQHoGkTFSCFouvTyk3H76L6b
i1GrUXHv3Rs47HZ/JGVv/ufkrqTAAXQ3pClerXc8GjZ77OZD9utp5bGFNnbowexz
xyZ9X8cghEUwi0H/URzrUA/m3KDYPIIn4Z4eU1VxbrwfpzxC62enQzkZSfGiPQQ7
812rHcAvB7qmTymu9/tVuTvn9EsP0l6tQO37+Z1LDvz+4wRSKaT+268hPw3+NNi6
EAd/AgMBAAGjYzBhMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAkkmWwuxuH5
5Y2qDBeAvpzPUjPLMB8GA1UdIwQYMBaAFAkkmWwuxuH55Y2qDBeAvpzPUjPLMA4G
A1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOCAQEAgvZX2iDS5OS++C4+uoY+
ZCAaBsdt/iv2d4GlAqnoXPCOFolKsmKW7LExniGvkIFLFNe66CZnchhGy/ztUsQX
Yc2yBSFC1X+WyJcybIEq4RAtETqFMljjA+UEJ4EdKqC861JYhmyCbWSS1i02qNYN
asDwG7cUr2yVOUBUsBRme/IgmcI6EAur2DAy2UEfJ2ZCr2gqeBYk06pYzHlMB8wF
mTcIFDIA92vtvYTWQuBq/dcFqI01LrW9MIjoHhLie0heUtsSNxp+rmonD+z9d/Tl
Oye0SNXV6HAPmQ8AeTbqk7nyyhE6KWN2L5vfYQmEr4Ulk1sbqwqtCLGfRpqjtMrn
3A==
       -----END CERTIFICATE-----
    undercloud-ca:
      content: |
       -----BEGIN CERTIFICATE-----
MIIDjTCCAnWgAwIBAgIQaCqoPKhcQTq4IwpfWrKXkzANBgkqhkiG9w0BAQsFADBQ
MSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhvcml0eTEsMCoGA1UEAwwjNjgy
YWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3OTMwHhcNMTgxMjAzMTEwNjU5
WhcNMTkxMjAzMTEwNjU5WjBQMSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhv
cml0eTEsMCoGA1UEAwwjNjgyYWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3
OTMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvbF4iBna9U1ESswIF
UcD/rMFSYu2Fv5FGBOm2ZYxDw34TD1wxm2szW3je+v/P4cJgy2HYI363lrOj5kAQ
QfSUG7ChTWK/I9w3g6clkxJmViBV9Pr960vOQY2ZsQHoGkTFSCFouvTyk3H76L6b
i1GrUXHv3Rs47HZ/JGVv/ufkrqTAAXQ3pClerXc8GjZ77OZD9utp5bGFNnbowexz
xyZ9X8cghEUwi0H/URzrUA/m3KDYPIIn4Z4eU1VxbrwfpzxC62enQzkZSfGiPQQ7
812rHcAvB7qmTymu9/tVuTvn9EsP0l6tQO37+Z1LDvz+4wRSKaT+268hPw3+NNi6
EAd/AgMBAAGjYzBhMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAkkmWwuxuH5
5Y2qDBeAvpzPUjPLMB8GA1UdIwQYMBaAFAkkmWwuxuH55Y2qDBeAvpzPUjPLMA4G
A1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOCAQEAgvZX2iDS5OS++C4+uoY+
ZCAaBsdt/iv2d4GlAqnoXPCOFolKsmKW7LExniGvkIFLFNe66CZnchhGy/ztUsQX
Yc2yBSFC1X+WyJcybIEq4RAtETqFMljjA+UEJ4EdKqC861JYhmyCbWSS1i02qNYN
asDwG7cUr2yVOUBUsBRme/IgmcI6EAur2DAy2UEfJ2ZCr2gqeBYk06pYzHlMB8wF
mTcIFDIA92vtvYTWQuBq/dcFqI01LrW9MIjoHhLie0heUtsSNxp+rmonD+z9d/Tl
Oye0SNXV6HAPmQ8AeTbqk7nyyhE6KWN2L5vfYQmEr4Ulk1sbqwqtCLGfRpqjtMrn
3A==
       -----END CERTIFICATE-----
EOF

jq . << EOF > ~/templates/inject-trust-anchor-hiera.yaml
parameter_defaults:
  CAMap:
    overcloud-ca:
      content: |
       -----BEGIN CERTIFICATE-----
MIIDjTCCAnWgAwIBAgIQaCqoPKhcQTq4IwpfWrKXkzANBgkqhkiG9w0BAQsFADBQ
MSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhvcml0eTEsMCoGA1UEAwwjNjgy
YWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3OTMwHhcNMTgxMjAzMTEwNjU5
WhcNMTkxMjAzMTEwNjU5WjBQMSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhv
cml0eTEsMCoGA1UEAwwjNjgyYWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3
OTMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvbF4iBna9U1ESswIF
UcD/rMFSYu2Fv5FGBOm2ZYxDw34TD1wxm2szW3je+v/P4cJgy2HYI363lrOj5kAQ
QfSUG7ChTWK/I9w3g6clkxJmViBV9Pr960vOQY2ZsQHoGkTFSCFouvTyk3H76L6b
i1GrUXHv3Rs47HZ/JGVv/ufkrqTAAXQ3pClerXc8GjZ77OZD9utp5bGFNnbowexz
xyZ9X8cghEUwi0H/URzrUA/m3KDYPIIn4Z4eU1VxbrwfpzxC62enQzkZSfGiPQQ7
812rHcAvB7qmTymu9/tVuTvn9EsP0l6tQO37+Z1LDvz+4wRSKaT+268hPw3+NNi6
EAd/AgMBAAGjYzBhMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAkkmWwuxuH5
5Y2qDBeAvpzPUjPLMB8GA1UdIwQYMBaAFAkkmWwuxuH55Y2qDBeAvpzPUjPLMA4G
A1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOCAQEAgvZX2iDS5OS++C4+uoY+
ZCAaBsdt/iv2d4GlAqnoXPCOFolKsmKW7LExniGvkIFLFNe66CZnchhGy/ztUsQX
Yc2yBSFC1X+WyJcybIEq4RAtETqFMljjA+UEJ4EdKqC861JYhmyCbWSS1i02qNYN
asDwG7cUr2yVOUBUsBRme/IgmcI6EAur2DAy2UEfJ2ZCr2gqeBYk06pYzHlMB8wF
mTcIFDIA92vtvYTWQuBq/dcFqI01LrW9MIjoHhLie0heUtsSNxp+rmonD+z9d/Tl
Oye0SNXV6HAPmQ8AeTbqk7nyyhE6KWN2L5vfYQmEr4Ulk1sbqwqtCLGfRpqjtMrn
3A==
       -----END CERTIFICATE-----
    undercloud-ca:
      content: |
       -----BEGIN CERTIFICATE-----
MIIDjTCCAnWgAwIBAgIQaCqoPKhcQTq4IwpfWrKXkzANBgkqhkiG9w0BAQsFADBQ
MSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhvcml0eTEsMCoGA1UEAwwjNjgy
YWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3OTMwHhcNMTgxMjAzMTEwNjU5
WhcNMTkxMjAzMTEwNjU5WjBQMSAwHgYDVQQDDBdMb2NhbCBTaWduaW5nIEF1dGhv
cml0eTEsMCoGA1UEAwwjNjgyYWE4M2MtYTg1YzQxM2EtYjgyMzBhNWYtNWFiMjk3
OTMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCvbF4iBna9U1ESswIF
UcD/rMFSYu2Fv5FGBOm2ZYxDw34TD1wxm2szW3je+v/P4cJgy2HYI363lrOj5kAQ
QfSUG7ChTWK/I9w3g6clkxJmViBV9Pr960vOQY2ZsQHoGkTFSCFouvTyk3H76L6b
i1GrUXHv3Rs47HZ/JGVv/ufkrqTAAXQ3pClerXc8GjZ77OZD9utp5bGFNnbowexz
xyZ9X8cghEUwi0H/URzrUA/m3KDYPIIn4Z4eU1VxbrwfpzxC62enQzkZSfGiPQQ7
812rHcAvB7qmTymu9/tVuTvn9EsP0l6tQO37+Z1LDvz+4wRSKaT+268hPw3+NNi6
EAd/AgMBAAGjYzBhMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAkkmWwuxuH5
5Y2qDBeAvpzPUjPLMB8GA1UdIwQYMBaAFAkkmWwuxuH55Y2qDBeAvpzPUjPLMA4G
A1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOCAQEAgvZX2iDS5OS++C4+uoY+
ZCAaBsdt/iv2d4GlAqnoXPCOFolKsmKW7LExniGvkIFLFNe66CZnchhGy/ztUsQX
Yc2yBSFC1X+WyJcybIEq4RAtETqFMljjA+UEJ4EdKqC861JYhmyCbWSS1i02qNYN
asDwG7cUr2yVOUBUsBRme/IgmcI6EAur2DAy2UEfJ2ZCr2gqeBYk06pYzHlMB8wF
mTcIFDIA92vtvYTWQuBq/dcFqI01LrW9MIjoHhLie0heUtsSNxp+rmonD+z9d/Tl
Oye0SNXV6HAPmQ8AeTbqk7nyyhE6KWN2L5vfYQmEr4Ulk1sbqwqtCLGfRpqjtMrn
3A==
       -----END CERTIFICATE-----
EOF

vi templates/inject-trust-anchor-hiera.yaml 
time ~/bin/overcloud-deploy.sh
vi templates/inject-trust-anchor-hiera.yaml 
sudo yum install vim
vim templates/inject-trust-anchor-hiera.yaml 
time ~/bin/overcloud-deploy.sh
swift delete overcloud
time ~/bin/overcloud-deploy.sh
grep CAMap ./*
grep CAMap -r ./*
vim templates/inject-trust-anchor-hiera.yaml 
time ~/bin/overcloud-deploy.sh
grep AQD5hwZcSDIlCxAASq718kYlyJcQ -r ./*
vi templates/ceph-external.yaml 
time ~/bin/overcloud-deploy.sh
source stack
source stackrc 
openstack stack list
openstack workflow env show overcloud
source overcloudrc 
openstack workflow env show overcloud
source stackrc 
openstack --help | grep workflow
openstack workflow env show 
openstack workflow env list
openstack server list
openstack baremetal node list
grep AUTH_URL overcloudrc
ssh heat-admin@172.16.0.46
source overcloudrc 
openstack catalog list
source ~/stackrc
 for i in $(openstack server list -c Name -f value); do IP=$(openstack server show ${i} -c addresses -f value | awk -F= '{print$2}'); echo -e "${IP}\t${i}"; done 
for i in $(openstack server list -c Name -f value); do IP=$(openstack server show ${i} -c addresses -f value | awk -F= '{print$2}'); echo -e "${IP}\t${i}"; done | sudo tee -a /etc/hosts
ssh heat-admin@lab-controller01
source overcloudrc 
openstack network create --external --share --provider-network-type flat --provider-physical-network datacentre external
cat templates/environments/network-environment.yaml 
cat templates/environments/network_data.yaml 
openstack subnet create  --gateway 192.168.0.1  --allocation-pool start=192.168.0.151,end=192.168.0.200  --no-dhcp  --network external  --subnet-range 192.168.0.0/24  external
curl -o cirros.img http://download.cirros-cloud.net/0.3.5/cirros-0.3.5-x86_64-disk.img
qemu-img convert -f qcow2 -O raw cirros.img cirros.raw
openstack image create --disk-format raw --container-format bare --public --file cirros.raw cirros
sudo rbd --id openstack -p images ls
find / -name "*ceph.keyring*"
sudo find / -name "*ceph.keyring*"
ssh heat-admin@lab-controller01
openstack flavor list
openstack flavor create --ram 512 --disk 1 --vcpus 1 m1.tiny
openstack project create test
openstack user create --project test --password r3dh4t1! test
openstack role add --user test --project test admin
sed -e 's/=admin/=test/' -e 's/OS_PASSWORD=.*/OS_PASSWORD=r3dh4t1!/' overcloudrc > ~/testrc
source ~/testrc
openstack network create test
openstack subnet create  --network test  --gateway 192.168.123.254  --allocation-pool start=192.168.123.1,end=192.168.123.253  --dns-nameserver 8.8.8.8  --subnet-range 192.168.123.0/24  test
openstack router create test
openstack router set --external-gateway external test
openstack router add subnet test test
openstack security group rule create  --ingress  --ethertype IPv4  --protocol tcp  --dst-port 22 
openstack security group rule create  --ingress  --ethertype IPv4  --protocol tcp  --dst-port 22  $(openstack security group list --project test -c ID -f value)
openstack security group rule create --ingress --ethertype IPv4 --protocol icmp $(openstack security group list --project test -c ID -f value)
cat overcloudrc 
openstack keypair create --public-key ~/.ssh/id_rsa.pub stack
openstack floating ip create external
openstack server create  --flavor m1.tiny  --image cirros  --key-name stack  --security-group $(openstack security group list --project test -c ID -f value)  --nic net-id=$(openstack network list --name test -c ID -f value) test
openstack server list
#openstack server add floating ip test 192.168.0.152
openstack server list
openstack server add floating ip test 192.168.0.152
openstack server list
ping 192.168.0.152
ssh cirros@192.168.0.152
ssh heat-admin@lab-controller01 "sudo rbd --id openstack -p vms ls"
run-validation /usr/share/openstack-tripleo-validations/validations/controller-ulimits.yaml ~/.ssh/id_rsa overcloud
cp -a templates/ templates_pre/
cd templates_pre/ 
source stackrc 
openstack baremetal node list
ll ../network/config/bond-with-vlans/networker.yaml
pwd
vi templates/network/config/bond-with-vlans/networker.yaml 
vi templates/network/config/bond-with-vlans/controller.yaml 
vi templates/network/config/bond-with-vlans/networker.yaml 
history 
sudo su -
source stackrc 
openstack overcloud roles generate -o ~/templates/roles_data.yaml Controller Compute Networker
vim templates/roles_data.yaml 
openstack baremetal node set  overcloud-networker --property capabilities=profile:networker,boot_option:local
openstack overcloud profiles list
openstack flavor create --id auto --ram 4096 --disk 40 --vcpus 1 networker
openstack flavor set  --property "capabilities:boot_option"="local" --property "capabilities:profile"="networker" networker
pwd
 cat << EOF > templates/networker-flavor.yaml
parameter_defaults:
  OvercloudNetworkerFlavor: networker
  NetworkerCount: 1
EOF

cat templates/networker-flavor.yaml 
cat templates/roles_data.yaml 
vi templates/environments/network-isolation.yaml 
vi templates/network/config/bond-with-vlans/controller.yaml 
cat << EOF >> ~/templates/network/config/bond-with-vlans/networker.yaml
heat_template_version: queens
description: >
  Software Config to drive os-net-config with 2 bonded nics on a bridge with VLANs attached for the Controller role.
parameters:
  ControlPlaneIp:
    default: ''
    description: IP address/subnet on the ctlplane network
    type: string
  StorageIpSubnet:
    default: ''
    description: IP address/subnet on the storage network
    type: string
  StorageMgmtIpSubnet:
    default: ''
    description: IP address/subnet on the storage_mgmt network
    type: string
  InternalApiIpSubnet:
    default: ''
    description: IP address/subnet on the internal_api network
    type: string
  TenantIpSubnet:
    default: ''
    description: IP address/subnet on the tenant network
    type: string
  ExternalIpSubnet:
    default: ''
    description: IP address/subnet on the external network
    type: string
  ManagementIpSubnet:
    default: ''
    description: IP address/subnet on the management network
    type: string
  BondInterfaceOvsOptions:
    default: bond_mode=active-backup
    description: 'The ovs_options or bonding_options string for the bond
      interface. Set things like lacp=active and/or bond_mode=balance-slb
      for OVS bonds or like mode=4 for Linux bonds using this option.'
    type: string
  StorageNetworkVlanID:
    default: 30
    description: Vlan ID for the storage network traffic.
    type: number
  StorageMgmtNetworkVlanID:
    default: 40
    description: Vlan ID for the storage_mgmt network traffic.
    type: number
  InternalApiNetworkVlanID:
    default: 20
    description: Vlan ID for the internal_api network traffic.
    type: number
  TenantNetworkVlanID:
    default: 50
    description: Vlan ID for the tenant network traffic.
    type: number
  ExternalNetworkVlanID:
    default: 10
    description: Vlan ID for the external network traffic.
    type: number
  ManagementNetworkVlanID:
    default: 60
    description: Vlan ID for the management network traffic.
    type: number
  ControlPlaneDefaultRoute: # Override this via parameter_defaults
    description: The default route of the control plane network.
    type: string
  ExternalInterfaceDefaultRoute:
    default: '10.0.0.1'
    description: default route for the external network
    type: string
  ControlPlaneSubnetCidr: # Override this via parameter_defaults
    default: '24'
    description: The subnet CIDR of the control plane network.
    type: string
  DnsServers: # Override this via parameter_defaults
    default: []
    description: A list of DNS servers (2 max for some implementations) that will be added to resolv.conf.
    type: comma_delimited_list
  EC2MetadataIp: # Override this via parameter_defaults
    description: The IP address of the EC2 metadata server.
    type: string
resources:
  OsNetConfigImpl:
    type: OS::Heat::SoftwareConfig
    properties:
      group: script
      config:
        str_replace:
          template:
            get_file: ../../scripts/run-os-net-config.sh
          params:
            $network_config:
              network_config:
              - type: interface
                name: nic1
                use_dhcp: false
                addresses:
                - ip_netmask:
                    list_join:
                    - /
                    - - get_param: ControlPlaneIp
                      - get_param: ControlPlaneSubnetCidr
                routes:
                - ip_netmask: 169.254.169.254/32
                  default: true
                  next_hop:
                    get_param: EC2MetadataIp
              - type: ovs_bridge
                name: bridge_name
                dns_servers:
                  get_param: DnsServers
                members:
                - type: ovs_bond
                  name: bond1
                  ovs_options:
                    get_param: BondInterfaceOvsOptions
                  members:
                  - type: interface
                    name: nic2
                    primary: true
                  - type: interface
                    name: nic3
                - type: vlan
                  vlan_id:
                    get_param: InternalApiNetworkVlanID
                  addresses:
                  - ip_netmask:
                      get_param: InternalApiIpSubnet
                - type: vlan
                  vlan_id:
                    get_param: TenantNetworkVlanID
                  addresses:
                  - ip_netmask:
                      get_param: TenantIpSubnet
outputs:
  OS::stack_id:
    description: The OsNetConfigImpl resource.
    value:
      get_resource: OsNetConfigImpl
EOF

history 
vi templates/network/config/bond-with-vlans/networker.yaml 
vi templates/environments/network-isolation.yaml 
vi templates/environments/network-environment.yaml 
sed -i 's/ControllerCount: 3/ControllerCount: 1/' templates/node-config.yam
vi templates/environments/network-isolation.yaml 
vi templates/environments/net-bond-with-vlans.yaml 
vi templates/environments/network-environment.yaml 
source ~/stackrc
openstack stack list
history | grep delete
openstack stack delete overcloud --wait --yes
ll
cat deploy.sh 
history | more
vi overcloud-deploy.sh
openstack server list
chmod  +x overcloud-deploy.sh 
screen
openstack stack list
source stackrc 
openstack stack list
openstack --help | grep fail
openstack cat << EOF >> ~/templates/network/config/bond-with-vlans/networker.yaml
heat_template_version: queens
description: >
  Software Config to drive os-net-config with 2 bonded nics on a bridge with VLANs attached for the Controller role.
parameters:
  ControlPlaneIp:
    default: ''
    description: IP address/subnet on the ctlplane network
    type: string
  StorageIpSubnet:
    default: ''
    description: IP address/subnet on the storage network
    type: string
  StorageMgmtIpSubnet:
    default: ''
    description: IP address/subnet on the storage_mgmt network
    type: string
  InternalApiIpSubnet:
    default: ''
    description: IP address/subnet on the internal_api network
    type: string
  TenantIpSubnet:
    default: ''
    description: IP address/subnet on the tenant network
    type: string
  ExternalIpSubnet:
    default: ''
    description: IP address/subnet on the external network
    type: string
  ManagementIpSubnet:
    default: ''
    description: IP address/subnet on the management network
    type: string
  BondInterfaceOvsOptions:
    default: bond_mode=active-backup
    description: 'The ovs_options or bonding_options string for the bond
      interface. Set things like lacp=active and/or bond_mode=balance-slb
      for OVS bonds or like mode=4 for Linux bonds using this option.'
    type: string
  StorageNetworkVlanID:
    default: 30
    description: Vlan ID for the storage network traffic.
    type: number
  StorageMgmtNetworkVlanID:
    default: 40
    description: Vlan ID for the storage_mgmt network traffic.
    type: number
  InternalApiNetworkVlanID:
    default: 20
    description: Vlan ID for the internal_api network traffic.
    type: number
  TenantNetworkVlanID:
    default: 50
    description: Vlan ID for the tenant network traffic.
    type: number
  ExternalNetworkVlanID:
    default: 10
    description: Vlan ID for the external network traffic.
    type: number
  ManagementNetworkVlanID:
    default: 60
    description: Vlan ID for the management network traffic.
    type: number
  ControlPlaneDefaultRoute: # Override this via parameter_defaults
    description: The default route of the control plane network.
    type: string
  ExternalInterfaceDefaultRoute:
    default: '10.0.0.1'
    description: default route for the external network
    type: string
  ControlPlaneSubnetCidr: # Override this via parameter_defaults
    default: '24'
    description: The subnet CIDR of the control plane network.
    type: string
  DnsServers: # Override this via parameter_defaults
    default: []
    description: A list of DNS servers (2 max for some implementations) that will be added to resolv.conf.
    type: comma_delimited_list
  EC2MetadataIp: # Override this via parameter_defaults
    description: The IP address of the EC2 metadata server.
    type: string
resources:
  OsNetConfigImpl:
    type: OS::Heat::SoftwareConfig
    properties:
      group: script
      config:
        str_replace:
          template:
            get_file: ../../scripts/run-os-net-config.sh
          params:
            $network_config:
              network_config:
              - type: interface
                name: nic1
                use_dhcp: false
                addresses:
                - ip_netmask:
                    list_join:
                    - /
                    - - get_param: ControlPlaneIp
                      - get_param: ControlPlaneSubnetCidr
                routes:
                - ip_netmask: 169.254.169.254/32
                  default: true
                  next_hop:
                    get_param: EC2MetadataIp
              - type: ovs_bridge
                name: bridge_name
                dns_servers:
                  get_param: DnsServers
                members:
                - type: ovs_bond
                  name: bond1
                  ovs_options:
                    get_param: BondInterfaceOvsOptions
                  members:
                  - type: interface
                    name: nic2
                    primary: true
                  - type: interface
                    name: nic3
                - type: vlan
                  vlan_id:
                    get_param: InternalApiNetworkVlanID
                  addresses:
                  - ip_netmask:
                      get_param: InternalApiIpSubnet
                - type: vlan
                  vlan_id:
                    get_param: TenantNetworkVlanID
                  addresses:
                  - ip_netmask:
                      get_param: TenantIpSubnet
outputs:
  OS::stack_id:
    description: The OsNetConfigImpl resource.
    value:
      get_resource: OsNetConfigImpl:q




openstack --help | grep fail
ps -ef | grep screen
kill -9 15438
s
ource stackrc 
source stackrc 
openstack --help | grep fail
openstack stack failures list
openstack stack failures list --long
openstack stack failures list overcloud --long
sudo su 0
sudo su -
openstack stack failures list overcloud --long
openstack stack resourses list overcloud
openstack stack resourse list overcloud
openstack stack resourse list
openstack stack resource list
vi templates/networker-flavor.yaml 
vi templates/network/config/bond-with-vlans/networker.yaml 
cat templates/network/config/bond-with-vlans/networker.yaml  | grep $
cat templates/network/config/bond-with-vlans/networker.yaml  | grep \$
cat templates/network/config/bond-with-vlans/networker.yaml  | grep "$"
cat templates/network/config/bond-with-vlans/networker.yaml  | grep "\$"
openstack server list
ssh heat-admin@172.16.0.22
cat templates/network/config/bond-with-vlans/networker.yaml 
ssh heat-admin@172.16.0.22
cat templates/network/network.j2 

cat templates/network/networks.yaml 
cat templates/environments/net-bond-with-vlans.yaml 
cat templates/environments/network-environment.yaml 
cat templates/environments/network-isolation.yaml 
cat templates/environments/network_data.yaml 
cat templates/network/config/bond-with-vlans/networker.yaml 
vim templates/network/config/bond-with-vlans/networker.yaml 
vim templates/network/config/bond-with-vlans/controller.yaml 
openstack stack delete overcloud --wait --yes
vim templates/network/config/bond-with-vlans/networker.yaml 
vim templates/network/config/bond-with-vlans/controller.yaml 
vim templates/network/config/bond-with-vlans/networker.yaml 
vim templates/network/config/bond-with-vlans/compute.yaml 
vim templates/network/config/bond-with-vlans/networker.yaml 
vim templates/network/config/bond-with-vlans/controller.yaml 
vim templates/network/config/bond-with-vlans/networker.yaml 
vim templates/network/config/bond-with-vlans/controller.yaml 
vim templates/network/config/bond-with-vlans/networker.yaml 
history 
echo $network_config:
echo $network_config
screen -S deploy
ps -ef | grep scree
screen -x deploy
./overcloud-deploy.sh 
vi templates/ips-from-pool-all.yaml 
openstack stack delete overcloud --yes
vi templates/environments/network-environment.yaml 
vi templates/environments/network_data.yaml 
:q
vi templates/environments/network-isolation.yaml 
watch openstack stack list
./overcloud-deploy.sh 
d
openstack server list
openstack baremetal node list
source ~/overcloudrc
openstack network agent list
openstack delete overcloud --yes
history | grtep delete
./overcloud-deploy.sh 
vi templates/ips-from-pool-all.yaml 
openstack stack delete overcloud --yes
vi templates/environments/network-environment.yaml 
vi templates/environments/network_data.yaml 
:q
vi templates/environments/network-isolation.yaml 
watch openstack stack list
./overcloud-deploy.sh 
d
openstack server list
openstack baremetal node list
source ~/overcloudrc
openstack network agent list
openstack delete overcloud --yes
history | grtep delete
history | grep delete
openstack stack delete overcloud --yes
rm overcloudrc 
source stackrc 
pwd
cp ./openstack-tripleo-heat-templates-rendered/environments/ssl/enable-tls.yaml templates/
cat templates/enable-tls.yaml 
sed -i.orig 's/\.\.\/\.\./\/usr\/share\/openstack-tripleo-heat-templates/'   /home/stack/templates/enable-tls.yaml
cat templates/enable-tls.yaml 
exit
source stackrc 
ssh heat-admin@lab-compute01
ssh heat-admin@overcloud-compute01
openstack server list
ssh heat-admin@overcloud-compute-1
ssh heat-admin@172.16.0.49
source ~/overcloudrc
vm1_id=$(openstack server list --all-projects | awk '/vm1/ { print $2 }')
$ openstack server show $vm1_id -c OS-EXT-SRV-ATTR:hypervisor_hostname -f value
openstack server show $vm1_id -c OS-EXT-SRV-ATTR:hypervisor_hostname -f value
ssh heat-admin@172.16.0.49
openstack server list --all
openstack server show vm1
openstack server show 220a8fce-3196-4b57-bf22-1c2b58899a0a
source stackrc 
openstack server list
ssh heat-admin@172.16.0.49
pwd
grep NodeTLSData ~/templates/enable-tls.yaml
cp /usr/share/openstack-tripleo-heat-templates/environments/ssl/inject-trust-anchor.yaml /home/stack/templates/inject-trust-anchor.yaml
sed -i.orig 's/\.\.\/\.\./\/usr\/share\/openstack-tripleo-heat-templates/' /home/stack/templates/inject-trust-anchor.yaml
grep NodeTLSCAData ~/templates/inject-trust-anchor.yaml
openssl genrsa -out /home/stack/templates/overcloud-privkey.pem 2048
openssl req -new -x509 -key /home/stack/templates/overcloud-privkey.pem -out /home/stack/templates/overcloud-cacert.pem -days 365 -subj '/C=US/ST=NC/L=Raleigh/O=Red HAt/OU=QE/CN=192.168.0.150'
sudo cp /home/stack/templates/overcloud-cacert.pem /etc/pki/ca-trust/source/anchors/
ls /etc/pki/ca-trust/source/anchors/
 sudo update-ca-trust extract
cd ~/templates
 sed -i -e '/The contents of your certificate go here/r overcloud-cacert.pem' -e '/The contents of your certificate go here/ d' enable-tls.yaml
sed -i  -e '/-----BEGIN CERT/,/-----END CERT/{s/^/    /g}' enable-tls.yaml
cat enable-tls.yaml
cat overcloud-privkey.pem 
sed -i -e '/The contents of the private key go here/r overcloud-privkey.pem' -e '/The contents of the private key go here/ d' enable-tls.yaml
sed -i -e '/-----BEGIN RSA/,/-----END RSA/{s/^/    /g}' enable-tls.yaml
cat overcloud-privkey.pem 
cat enable-tls.yaml
sed -i -e '/The contents of your certificate go here/r overcloud-cacert.pem' -e '/The contents of your certificate go here/ d' inject-trust-anchor.yaml
sed -i  -e '/-----BEGIN CERT/,/-----END CERT/{s/^/    /g}' inject-trust-anchor.yaml
cat enable-tls.yaml
cat inject-trust-anchor.yaml
cd ~
cp /usr/share/openstack-tripleo-heat-templates/environments/neutron-ovs-dvr.yaml templates
sed -i 's#../#/usr/share/openstack-tripleo-heat-templates/#' templates/neutron-ovs-dvr.yaml
vi templates/neutron-ovs-dvr.yaml 
cd ~
cat >dvr.patch <<EOF
--- templates/environments/network-isolation.yaml.orig2018-12-01 12:35:50.451000000 -0500
+++ templates/environments/network-isolation.yaml 2018-12-01 12:36:25.604000000 -0500
@@ -30,6 +30,7 @@
   OS::TripleO::Compute::Ports::StoragePort: ../network/ports/storage.yaml
   OS::TripleO::Compute::Ports::InternalApiPort: ../network/ports/internal_api.yaml
   OS::TripleO::Compute::Ports::TenantPort: ../network/ports/tenant.yaml
+  OS::TripleO::Compute::Ports::ExternalPort: ../network/ports/external.yaml

   OS::TripleO::BlockStorage::Ports::StoragePort: ../network/ports/storage.yaml

--- templates/network/config/bond-with-vlans/compute.yaml.orig2018-12-01 12:37:28.441000000 -0500
+++ templates/network/config/bond-with-vlans/compute.yaml 2018-12-01 12:38:28.047000000 -0500
@@ -108,9 +108,16 @@
                     get_param: ControlPlaneDefaultRoute
               - type: ovs_bridge
                 name: bridge_name
-
                 dns_servers:
                   get_param: DnsServers
+                addresses:
+                  -
+                    ip_netmask: {get_param: ExternalIpSubnet}
+                routes:
+                  -
+                    default: true
+                    next_hop: {get_param: ExternalInterfaceDefaultRoute}
+
                 members:
                 - type: ovs_bond
                   name: bond1
EOF

patch -p0 <dvr.patch
cat templates/environments/network-isolation.yaml 
cd ~
cp /usr/share/openstack-tripleo-heat-templates/environments/neutron-ovs-dvr.yaml templates
sed -i 's#../#/usr/share/openstack-tripleo-heat-templates/#' templates/neutron-ovs-dvr.yaml
vi templates/neutron-ovs-dvr.yaml 
cat templates/environments/network-isolation.yaml 
vi /home/stack/templates/environments/storage-ceph-hyperconverged-environment.yaml
histr
history 
cat > /home/stack/templates/environments/storage-ceph-hyperconverged-environment.yaml <<EOFresource_registry:
  OS::TripleO::Network::StorageMgmt: /usr/share/openstack-tripleo-heat-templates/network/storage_mgmt.yaml
  OS::TripleO::Network::External: /usr/share/openstack-tripleo-heat-templates/network/external.yaml
  OS::TripleO::Network::Ports::StorageMgmtVipPort: /usr/share/openstack-tripleo-heat-templates/network/ports/storage_mgmt.yaml
  OS::TripleO::Controller::Ports::StorageMgmtPort: /usr/share/openstack-tripleo-heat-templates/network/ports/storage_mgmt.yaml
  OS::TripleO::Compute::Ports::StorageMgmtPort: /usr/share/openstack-tripleo-heat-templates/network/ports/storage_mgmt.yaml
  OS::TripleO::Compute::Ports::ExternalPort: /usr/share/openstack-tripleo-heat-templates/network/ports/external.yaml

parameter_defaults:
  CephConfigOverrides:
    osd_pool_default_size: 2
    osd_pool_default_min_size: 1
    mon_max_pg_per_osd: 1000
  CephAnsibleDisksConfig:
    osd_scenario: collocated
    devices:
      - /dev/vdb
EOF

vi /home/stack/templates/environments/storage-ceph-hyperconverged-environment.yaml
vi templates/network/config/bond-with-vlans/compute.yaml
vi templates/ips-from-pool-all.yaml 
vi templates/node-config.yaml 
vi overcloud-deploy.sh 
openstack stack list
source stackrc 
openstack stack list
openstack stack delete overcloud --wait --yes
./overcloud-deploy.sh 
vi templates/node-config.yaml 
./overcloud-deploy.sh 
source ~/stackrc
openstack server list -c Name -c Networks -f value | awk '/lab/ { gsub("ctlplane=",""); print $2" "$1; }' | sudo tee -a /etc/hosts
source overcloudrc
curl http://download.cirros-cloud.net/0.3.5/cirros-0.3.5-x86_64-disk.img  | openstack image create cirros --disk-format qcow2 --public
openstack network create --external --share --provider-network-type flat --provider-physical-network datacentre external
openstack subnet create  --gateway 192.168.0.1  --allocation-pool start=192.168.0.151,end=192.168.0.200  --no-dhcp  --network external  --subnet-range 192.168.0.0/24  external
openstack flavor create --ram 512 --disk 1 --vcpus 1 m1.tiny
openstack role create ResellerAdmin
openstack stack create -t http://classroom/class/osp_advanced_director/lab8_admin.yaml lab8_admin --wait
openstack stack show lab8_admin
openstack stack list
cd ~
 sed -e 's/OS_USERNAME=admin/OS_USERNAME=user1/'       -e 's/OS_PROJECT_NAME=admin/OS_PROJECT_NAME=tenant1/'       -e 's/OS_PASSWORD=.*/OS_PASSWORD=redhat/' overcloudrc > ~/user1rc
 . ~/user1rc
env | grep OS_
openstack stack create -t http://classroom/class/osp_advanced_director/lab8_user_net.yaml lab8_user_net --wait
overcloudrc
source  overcloudrc 
openstack network agent list
openstack router list -c Name -c Distributed
openstack stack show lab8_user_net
source user1rc 
openstack stack show lab8_user_net
openstack stack create -t http://classroom/class/osp_advanced_director/lab8_user.yaml lab8_user --wait
openstack stack list
curl http://classroom/class/osp_advanced_director/lab8_user.yaml 
openstack stack show lab8_user
openstack server list
ping 192.168.0.172
ping 192.168.1.20
ping 192.168.
ssh heat-admin@192.168.1.20
ping 8.8.8.8
ifconfig 
ping 8.8.8.8
ssh heat-admin@192.168.1.20
ssh cirros@192.168.1.20
source user1rc 
ssh cirros@192.168.1.20
openstack server list
ssh cirros@192.168.0.172
ssh cirros@192.168.1.20
. user1rc 
ssh cirros@192.168.1.20
ssh cirros@192.168.0.172
openstack stack show lab8_user
openstack server list
ping 192.168.1.20
ping 192.168.1.13
ping 192.168.0.172
ssh cirros@192.168.1.20
source overcloudrc 
openstack server list
ssh cirros@192.168.0.172
ssh cirros@192.168.1.20
. user1rc 
openstack server list
source stackrc 
ssh heat-admin@192.168.1.20
source stackrc 
ssh heat-admin@192.168.1.20
source overcloudrc 
ssh heat-admin@192.168.1.20
source stackrc 
openstack server list
ssh heat-admin@172.16.0.49
ls
ls -ltr
. overcloud
. overcloudrc 
openstack loadbalancer list
openstack server list --all
openstack loadbalancer amphora list
openstack console log show 14e96f2d-f01c-45aa-9458-4378861c3eb9
. stackrc
nova list
ssh heat-admin@172.16.0.34
ls
cd templates
ls
grep -i octavia *.yaml
vi roles_data.yaml 
ssh heat-admin@172.16.0.34
source stackrc 
ssh heat-admin@overcloud-compute-1
openstack server list
ssh heat-admin@172.16.0.49
source user1rc 
openstack server list
ping 192.168.0.172
openstack --help | grep floating
openstack server remove floating ip vm1
openstack server remove floating ip vm1 192.168.0.172
openstack floating ip list
openstack server add floating ip vm1 192.168.0.172
ping 192.168.0.172
ssh cirros@192.168.0.172
source overcloud
source overcloudrc 
neutron l3-agent-list-hosting-router router1
neutron dhcp-agent-list-hosting-net net1
source ~/overcloudrc
openstack endpoint list
openstack catalog list
grep OS_AUTH_URL ~/overcloudrc
source stackrc 
openstack server list
ssh heat-admin@grep OS_AUTH_URL ~/overcloudrc
ssh heat-admin@182.16.0.34
ssh heat-admin@172.16.0.34
echo " " > .ssh/known_hosts 
ssh heat-admin@172.16.0.34
$ sudo openstack secret container list
 sudo openstack secret container list
source overcloud
source overcloudrc 
 sudo openstack secret container list
openstack secret store --name rootPassword --payload 'r3dh4t1!'
openstack secret get  https://192.168.0.150:13311/v1/secrets/568d9f4c-d040-41b6-85aa-fb7bf32fb07d
openstack secret get  https://192.168.0.150:13311/v1/secrets/568d9f4c-d040-41b6-85aa-fb7bf32fb07d --payloa
openstack secret get  https://192.168.0.150:13311/v1/secrets/568d9f4c-d040-41b6-85aa-fb7bf32fb07d --payload
openstack volume type create --encryption-provider nova.volume.encryptors.luks.LuksEncryptor --encryption-cipher aes-xts-plain64 --encryption-key-size 256 --encryption-control-location front-end encryptedvolume
openstack volume create --size 1 --type encryptedvolume volume_encrypted_example
openstack secret list
history | grep securit
openstack security group list
openstack --help | grep security
openstack security group create sg-web
history | grep securit
openstack security group list --project test -c ID -f value
openstack security group rule create  --ingress  --ethertype IPv4  --protocol tcp  --dst-port 22 c4a35c48-9809-46eb-be9c-758638656104
openstack security group rule create  --ingress  --ethertype IPv4  --protocol icmp c4a35c48-9809-46eb-be9c-758638656104
openstack security group rule create  --ingress  --ethertype IPv4  --protocol http c4a35c48-9809-46eb-be9c-758638656104
openstack security group rule create  --ingress  --ethertype IPv4  --protocol tcp  --dst-port 80 c4a35c48-9809-46eb-be9c-758638656104
openstack security group list
openstack security group show sg-web
history | grep -i insta
history | grep -i create
source user1rc 
openstack security group rule create  --ingress  --ethertype IPv4  --protocol tcp  --dst-port 80 tenant_sg
history 
ssh heat-admin@172.16.0.34
source stackrc 
openstack server list
ssh heat-admin@172.16.0.49
source user1rc 
openstack server list
ssh heat-admin@172.16.0.49
openstack server list
ssh heat-admin@
history |grep floatin
openstack floating ip create external
openstack server add floating ip vm2 192.168.0.151
openstack server list
ssh heat-admin@172.16.0.49
openstack loadbalancer create --name lbweb --vip-subnet-id subnet1
openstack loadbalancer amphora list
whoami 
source overcloud
source overcloudrc
openstack loadbalancer amphora list
openstack server list --project services
openstack loadbalancer amphora list
source user1rc 
openstack server list
curl http://192.168.0.151
curl http://192.168.0.172
ping 192.168.0.172
curl http://192.168.0.172
ssh heat-admin@172.16.0.49
curl http://192.168.0.172
curl http://192.168.0.151
ssh heat-admin@172.16.0.49
curl http://192.168.0.172
ssh heat-admin@172.16.0.49
curl http://192.168.0.151
openstack loadbalancer amphora list
source overcloudrc 
openstack loadbalancer amphora list
openstack loadbalancer remove --name lbweb
openstack loadbalancer delete --name lbweb
openstack loadbalancer delete  lbweb
openstack loadbalancer create --name lbweb --vip-subnet-id external
openstack loadbalancer amphora list
openstack server list --project services
cat user1rc 
openstack server list --project tenant
openstack loadbalancer delete  lbweb
openstack loadbalancer delete  c3af409a-c541-4ec6-8165-8bbf6047e20b
openstack server list --project service
openstack loadbalancer amphora list
openstack loadbalancer delete  c3af409a-c541-4ec6-8165-8bbf6047e20b
openstack server remove floating ip vm2 192.168.0.151
history | grep floatin
openstack server remove floating ip vm1 192.168.0.172
openstack loadbalancer amphora list
openstack loadbalancer amphora ?
openstack loadbalancer amphora list
openstack loadbalancer delete 87180812-1156-43d4-aa7b-9608990ee209
openstack --help | grep amph
source stackrc 
history | grep delete
openstack stack delete overcloud --yes
openstack stack list
ךך
ll
vi templates/ips-from-pool-all.yaml 
vi templates/network/config/bond-with-vlans/controller.yaml 
