#!/usr/bin/env bash
if [ -z "$1" ]; then
  echo "⚠️ SLACK_INVITATION_URL is not set. Exiting..."
  exit 1
fi

SLACK_INVITATION_URL=$1
EXPECTED_PREFIX="https://join.slack.com/t/operaton/shared_invite/"

if [[ "$SLACK_INVITATION_URL" != $EXPECTED_PREFIX* ]]; then
  echo "⚠️ Invalid SLACK_INVITATION_URL. Exiting..."
  exit 1
fi

sed_inplace() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        sed -i '' -E "$@"
    else
        sed -i -E "$@"
    fi
}

pushd $(pwd) > /dev/null
cd $(git rev-parse --show-toplevel) || exit 1

AFFECTED_FILES=(index.html chat.md faq.md _data/resources.yml)

for AFFECTED_FILE in "${AFFECTED_FILES[@]}"; do
  echo "🔄 Updating Slack Invitation URL in $AFFECTED_FILE"
  if [[ "$AFFECTED_FILE" == "_data/resources.yml" ]]; then
    sed_inplace "s|url: ${EXPECTED_PREFIX}[^ ]*|url: ${SLACK_INVITATION_URL}|" $AFFECTED_FILE
  else
    sed_inplace "s|${EXPECTED_PREFIX}[^\)^\"]+|${SLACK_INVITATION_URL}|" $AFFECTED_FILE
  fi
done

echo "✅  Done!"

popd > /dev/null
