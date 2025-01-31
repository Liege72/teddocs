---
label: Modlogs
icon: dot-fill
order: 60
---

<div class="api-container-parent">
    <span class="api-method-get">POST</span>
    <span class="api-container-text">https://liege.dev/api<b>/logs</b></span>
</div>

<br>

==- Example request
+++ cURL

```sh
curl https://api.liege.dev/logs \
    --header "Authorization: Bearer BEARER_TOKEN"
    --header "Content-Type: application/json" \
    --request POST \
    --data '{
        "guildid": "000000000000000000",
        "userid": "000000000000000000",
        "type": 8,
        "reason": "This is a reason."
    }'
```

+++ C#
+++ JS
+++ Python
+++ Java
+++
==- Request body

##### Type

<br>

| <b>Action</b> | <b>Value</b> {.compact} |
| ------------- | ----------------------- |
| Warn          | 6                       |
| Timeout       | 7                       |
| Kick          | 8                       |
| Ban           | 9                       |

##### Request body

\* means parameter is required
<br>
\*\* means paramter may be required depending on the values of other parameters
<br>

| <b>Name</b>     | <b>Type</b> | <b>Type</b> {.compact}                                                                                                  |
| --------------- | ----------- | ----------------------------------------------------------------------------------------------------------------------- |
| guildid\*       | `string`    | The Discord guild ID of the guild the log is to be added to.                                                            |
| userid\*        | `string`    | The Discord user ID of the user the log is to be added to.                                                              |
| channelid       | `string`    | The Discord channel ID of the channel the log is to be associated with.                                                 |
| type\*          | `Type`      | The type of log to be created.                                                                                          |
| reason\*        | `string`    | The reason the log is being added to the user.                                                                          |
| banDays\*\*     | `int`       | When 'type' is 9, banDays must be >= 1; the amount of days the user is to be banned from the guild.                     |
| banDeleteDays   | `int`       | When 'type' is 9, banDeleteDays default is 0; the amount of days of messages from the user are to be deleted.           |
| timeoutTime\*\* | `int`       | When 'type' is 7, timeoutTime must be >= 1; the amount of <b>seconds</b> the user is to be timed out in the guild.      |
| logToChannel    | `bool`      | If the log should be logged to the guilds set modlog channel; default is true.                                          |
| takeAction      | `bool`      | If the user is to be actioned with the provided details of the log; default is true; when 'type' is 6, this is ignored. |
| notifyUser      | `bool`      | If the user the log is being added to should be notified in DMs; default is true.                                       |

==- Example response

```json
{
    "logStatus": {
        "code": 200,
        "message": "Log created!"
    },
    "notifyStatus": {
        "code": 200,
        "message": "Notified user in DMs!"
    },
    "logChannelStatus": {
        "code": 200,
        "message": "Logged to modlog channel!"
    },
    "actionStatus": {
        "code": 200,
        "message": "Kicked user!"
    }
}
```

===
