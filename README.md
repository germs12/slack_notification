# slack_notification

Generic Slack Notification Github Action
## Inputs

### `slack-notification-channel`

**Required** Slack Notification Channel.
Can be set up in env `$SLACK_NOTIFICATION_CHANNEL`.

### `repository`

**Required** Slack Notification Repository.
Can be set up in up in env `$SLACK_NOTIFICATION_REPO`.
Example: `https://github.com${{ github.repo }}`.

### `revision`

**Required** Slack Notification Deploy Revision.
Can be set up in up in env `$SLACK_NOTIFICATION_REVISION`.
Example: Set as the commit SHA `${{ github.sha }}`.

### `user`

**Required** Slack Notification Deploy User.
Can be set up in up in env `$SLACK_NOTIFICATION_DEPLOY_USER`.
Example: Set as the committer `${{ github.actor }}`.

## Outputs

### `response`

The API response from Airbrake `{"id": "asdf1234asdf1234"}`

## Example usage

```yaml
uses: germ12/slack_notification@v1
with:
  slack-notification-channel: ${{ env.SLACK_NOTIFICATION_CHANNEL }}
  repository: https://github.com${{ github.repo }}
  revision: ${{ github.sha }}
  user: ${{ github.actor }}
```
