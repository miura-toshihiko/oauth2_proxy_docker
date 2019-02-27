#!/bin/ash

export OAUTH2_PROXY_CLIENT_ID=${OAUTH2_PROXY_CLIENT_ID}
export OAUTH2_PROXY_CLIENT_SECRET=${OAUTH2_PROXY_CLIENT_SECRET}
export OAUTH2_PROXY_COOKIE_SECRET=${OAUTH2_PROXY_COOKIE_SECRET}



/bin/oauth2_proxy \
    -provider="github" \
    -github-org="${OAUTH2_PROXY_GITHUB_ORG}" \
    -github-team="${OAUTH2_PROXY_GITHUB_TEAM}" \
    -http-address="0.0.0.0:4180" \
    -redirect-url="${OAUTH2_PROXY_REDIREC_URL}" \
    -upstream="${upstream}" \
    -email-domain="*" \
    -cookie-domain="${OAUTH2_PROXY_COOKIE_DOMAIN}" \
    -cookie-refresh="${OAUTH2_PROXY_COOKIE_REFRESH}"
