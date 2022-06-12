#!/bin/bash
/root/install-nms.sh install \
	--app-dir /opt/nms_data \
	--data-dir /var/opt/mssql/sql_data \
	--sql-server 172.17.0.2 \
	--sql-user-id root \
	--sql-password my-secret-pw \
	--start-services true \
	--auto-services true \
	--licence-agreed true
