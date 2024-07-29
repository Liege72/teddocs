---
label: Errors
icon: dot-fill
order: 90
---

### HTTP status codes

=== 200 - Ok
Clients request was successful.
===

=== 201 - Created
Clients request was successful in creating a new resource.
===

=== 207 - Multi-Status
Clients request has more than one response.
===

=== 400 - Bad Request
The server cannot process the request because of a client error. Bad syntax or otherwise invalid formatting.
===

=== 401 - Unauthorized
An authorization header was not provided and the server cannot process request.
===

=== 403 - Forbidden
An authorization header was provided, but the client does not have have access to make requests.
===

=== 404 - Not Found
The server cannot find the resource requested by the client.
===

=== 429 - Too Many Requests
The client has sent too many requests to the server within a certain period of time and is being rate-limited.
===

=== 500-504 - Server Error
The server has encountered an error.
===

---

| Type                  | Description                                                                                |
| --------------------- | ------------------------------------------------------------------------------------------ |
| `bad_json`            | The JSON provided is missing a required parameter or includes a parameter that is invalid. |
| `bad_get`             | TED could not get a resource required to fulfill the request (ex: guild, channel, user).   |
| `missing_auth_header` | The request is missing an authorization header.                                            |
| `invalid_auth`        | The authorization provided is invalid or forbidden.                                        |
| `not_found`           | The resource requested could not be found.                                                 |

---

### Error example

The POST request is made to the URL below with the JSON below. For the sake of this example, assume a valid authorization key is provided.

```
https://api.liege.dev/add-modlog
```

```json
{
    "user_id": 6786402903025255151,
    "channel_id": 967135484738433084,
    "type": 8,
    "reason": "Breaking rules"
}
```

The server responds with the error below

```json
{
    "code": 400,
    "message": "Could not get the user provided."
}
```

In this case, the user provided was invalid likely because they are not a member of the guild associated with the API key provided.
