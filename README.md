# maas-vmware-fusion

This will allow MAAS to manage power for virtual machine created using VMWare Fusion.
For some reason it looks like VMWare Fusion is not using the same API as other VMWare products: most use a SOAP-based
API where Fusion uses a REST API delivered by an executable called 'vmrest' (part of Fusion).

This will make availabke a new power type: vmwaremac (VMWare Fusion (vmrest))

Couple pointers:
- [Using VMware Fusion REST API (VMWare doc)](https://docs.vmware.com/en/VMware-Fusion/11/com.vmware.fusion.using.doc/GUID-5F89D1FE-A95D-4C3C-894F-0084027CF66F.html)
- [How to enable remote REST API access for VMware Fusion 10 (blog)](https://www.virtuallyghetto.com/2017/09/how-to-enable-remote-rest-api-access-for-vmware-fusion-10.html)

You can use a self-signed certificate for vmrest:
- openssl req -x509 -newkey rsa:4096 -keyout fusionapi-key.pem -out fusionapi-cert.pem -days 365 -nodes
- use 'https+unverified' as protocol type in MAAS
