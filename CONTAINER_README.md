THIS IS MY CONTIANER README

cosign verify docker.io/invarianttech/client:main \
  --certificate-identity-regexp "https://github.com/ankenyr/client/.github/workflows/docker-publish.yml@refs/heads/main" \
  --certificate-oidc-issuer "https://token.actions.githubusercontent.com"