---
label: Introduction
icon: dot-fill
order: 100
---

### Base URL

```
https://liege.dev/api
```

### Authentication Request

#### Token and user permissions

The request below will return the token + users permissions for the provided guild.

```sh
curl https://liege.dev/api/authcheck \
  --header "Authorization: Bearer BEARER_TOKEN" \
  --header "GuildId: {guildid}"
```

#### Token validity

The request below will return the tokens validity; it only tells you if its a valid token, not if the tokens user has permissions anywhere.

```sh
curl https://liege.dev/api/authcheck \
  --header "Authorization: Bearer BEARER_TOKEN"
```

#### Responses

Your responses may be similar to the ones below.

```json
{
    "code": 200,
    "message": "The provided token cannot be authenticated because the user does not have valid permissions on the guild!"
}
```

Otherwise, you will receive the response shown below:

```json
{
    "code": 403,
    "message": "The provided token is valid and the user has valid permissions on the guild!"
}
```

### Getting an API Key

API keys are currently available to everyone that wants one. This may not be the case in the future. If you would like an API key, simply use the `/newkey` command with TED.
