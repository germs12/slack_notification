#!/bin/sh
#
# Slack Notification
#

set -e

CHANNEL=${SLACK_NOTIFICATION_CHANNEL:-$1}
REPOSITORY=${SLACK_NOTIFICATION_REPO:-$2}
COMMIT_SHA=${SLACK_NOTIFICATION_REVISION:-$3}
DEPLOY_USER=${SLACK_NOTIFICATION_DEPLOY_USER:-$4}

usage() {
  echo
  echo "entrypoint.sh \$SLACK_CHANNEL \$SLACK_NOTIFICATION_REPO \$SLACK_NOTIFICATION_REVISION \$SLACK_NOTIFICATION_DEPLOY_USER"
  echo
  echo "args:"
  echo
  echo "slack-channel: Slack notification channel; Can be set from \$SLACK_CHANNEL"
  echo "repository: Github repository to deploy e.g. oforce/insurance; Can be set from \$SLACK_NOTIFICATION_REPO"
  echo "revision: The revision of the deploy. Defaults to latest git SHA; Can be set from \$SLACK_NOTIFICATION_REVISION"
  echo "user: The user who is deploying; Can be set from \$SLACK_NOTIFICATION_DEPLOY_USER"
  exit 1
}

if [[ -z $CHANNEL || -z $REPOSITORY || -z $DEPLOY_USER ]]; then
  echo "Missing required arguements!"
  usage
  exit 1
fi

echo "Hello world from $PWD"
