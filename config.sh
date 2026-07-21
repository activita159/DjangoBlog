
set "GIT_USER_NAME=Allen"
set "GIT_USER_EMAIL=activita159@gmail.com"

#!/usr/bin/env bash
# =====================================================================
# Configuration Parameters for Database Download
# =====================================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

export FILE_ID="1KuL3P3lR4pg6jF8hiVyR_174Uk_aYhvb"
export DB_PATH="${SCRIPT_DIR}/db.sqlite3"
export DOWNLOAD_URL="https://drive.google.com/uc?export=download&id=${FILE_ID}"