Host ${GITLAB_NAME}.${DNS_ZONE_NAME}
    user git
Host data-ops-gitlab
    user ubuntu
    hostname ${SERVER_IP}
Host *
    identityfile ${PWD}/id_rsa
