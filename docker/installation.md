# ACP Installation Instructions:

## Notes:
> Assuming we are installing a basic <br>
package for 4G FWA Applications.  <br>
on rockylinux/rockylinux:8

### Update dnf metadata:
```
dnf makecache
```

###
### Install .NET core:
``` 
dnf install --assumeyes \
	aspnetcore-runtime-3.1 \
	dotnet-runtime-3.1 \
	aspnetcore-runtime-6.0 \
	dotnet-runtime-6.0
```
### Install NMS Script:
```
chmod u+x install-nms.sh

```
