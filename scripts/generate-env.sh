#!/usr/bin/env bash
set -euo pipefail

FRONTEND_DIR="${1:-.}"
ENV_FILE_NAME=".env.production"
TARGET_PATH="${FRONTEND_DIR}/${ENV_FILE_NAME}"

ENV="${DEPLOY_ENV:-sandbox}"

echo "Generating ${TARGET_PATH} for ENV=${ENV}"

case "${ENV}" in
  sandbox)
    TEST_VAR_3="sb"
    ;;

  prod)
    TEST_VAR_3="prod"
    ;;

  *)
    echo "Unknown DEPLOY_ENV=${ENV}, expected sandbox|prod"
    exit 1
    ;;
esac

cat <<EOF > "${TARGET_PATH}"
VITE_TEST_VAR_1=${TEST_VAR_1}
VITE_TEST_VAR_2=${TEST_VAR_2}
VITE_TEST_VAR_3=${TEST_VAR_3}
EOF

echo "Generated ${TARGET_PATH}:"
cat "${TARGET_PATH}"
