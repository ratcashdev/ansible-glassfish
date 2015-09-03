#!/bin/bash

# $1 - The first argument is always the directory where asadmin resides.
# $2 - The second argument to the script is the gf_env_instance_node variable

service glassfish start

# Enable protocol and user mapping from the Reverse-Proxy
$1/asadmin set configs.config.server-config.network-config.protocols.protocol.http-listener-1.http.scheme-mapping=X-Forwarded-Proto
$1/asadmin set configs.config.server-config.network-config.protocols.protocol.http-listener-1.http.remote-user-mapping=X-Forwarded-User
