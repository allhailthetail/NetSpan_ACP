FROM rockylinux:8

COPY install-nms.sh /root/install-nms.sh

COPY autorun.sh /root/autorun.sh

# Install NetSpan Dependencies:
RUN set -x \
	&& dnf install --assumeyes \
		aspnetcore-runtime-3.1 \
		dotnet-runtime-3.1 \
		aspnetcore-runtime-6.0 \
		dotnet-runtime-6.0 \
	&& chmod +x /root/install-nms.sh \
	&& chmod +x /root/autorun.sh

ENTRYPOINT bash
