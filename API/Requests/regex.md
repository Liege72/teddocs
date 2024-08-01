---
label: Regex censoring
icon: dot-fill
order: 90
---

<div class="api-container-parent">
    <span class="api-method-get">GET</span>
    <span class="api-container-text">https://liege.dev/api<b>/regex?guildid={guildid}</b></span>
</div>

<br>

==- Example request

```sh
curl https://liege.dev/api/regex?guildid={guildid} \
    --header "Authorization: Bearer BEARER_TOKEN"
```

<!-- +++ cURL

```sh
curl https://liege.dev/api/regex?guildid={guildid} \
    --header "Authorization: Bearer BEARER_TOKEN"
```

+++ C#

```c#
using System.Net.Http;

HttpClient client = new HttpClient();

HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Get, "https://liege.dev/api/regex?guildid={guildid}");

request.Headers.Add("Authorization", "Bearer BEARER_TOKEN");

HttpResponseMessage response = await client.SendAsync(request);
response.EnsureSuccessStatusCode();
string responseBody = await response.Content.ReadAsStringAsync();
```

+++ JS

```js
fetch("https://liege.dev/api/regex?guildid={guildid}", {
    headers: {
        Authorization: "Bearer BEARER_TOKEN",
    },
});
```

+++ Python

```py
import requests

headers = {
    'Authorization': 'Bearer BEARER_TOKEN',
}

response = requests.get('https://liege.dev/api/regex?guildid={guildid}', headers=headers)
```

+++ Java

```java
import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

HttpClient client = HttpClient.newHttpClient();

HttpRequest request = HttpRequest.newBuilder()
    .uri(URI.create("https://liege.dev/api/regex?guildid={guildid}"))
    .GET()
    .setHeader("Authorization", "Bearer BEARER_TOKEN")
    .build();

HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
```

+++ -->

<!-- ==- Request body

##### AutoAction

<br>

| <b>Action</b>       | <b>Value</b> {.compact} |
| ------------------- | ----------------------- |
| Delete              | 0                       |
| Warn                | 1                       |
| Timeout30m          | 2                       |
| Timeout6h           | 3                       |
| TimeoutIndefinitely | 4                       |
| Kick                | 5                       |
| Ban7d               | 6                       |
| BanPern             | 7                       | -->

==- Example response

```json
[
    {
        "statement": "regexstatment1",
        "action": 0
    },
    {
        "statement": "regexstatement2",
        "action": 2
    }
]
```

===

---

<div class="api-container-parent">
    <span class="api-method-post">POST</span>
    <span class="api-container-text">https://liege.dev/api<b>/regex</b></span>
</div>

<br>

==- Example request

```sh
curl https://liege.dev/api/regex \
    --header "Authorization: Bearer BEARER_TOKEN" \
    --header "Content-Type: application/json" \
    --request POST \
    --data '{ "guildid": "000000000000000000", "statement": "regexstatement1", "action": 2 }'
```

<!-- +++ cURL

```sh
curl https://liege.dev/api/regex?guildid={guildid} \
    --header "Authorization: Bearer BEARER_TOKEN" \
    --header "Content-Type: application/json" \
    --request POST \
    --data '{ "guildid": "000000000000000000", "statement": "regexstatement1", "action": 2 }'
```

+++ C#

```c#
using System.Net.Http;
using System.Net.Http.Headers;

HttpClient client = new HttpClient();

HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, "https://liege.dev/api/regex?guildid={guildid}");

request.Headers.Add("Authorization", "Bearer BEARER_TOKEN");

request.Content = new StringContent("{ \"statement\": \"regexstatement1\", \"action\": 2 }");
request.Content.Headers.ContentType = new MediaTypeHeaderValue("application/json");

HttpResponseMessage response = await client.SendAsync(request);
response.EnsureSuccessStatusCode();
string responseBody = await response.Content.ReadAsStringAsync();
```

+++ JS

```js
fetch("https://liege.dev/api/regex?guildid={guildid}", {
    method: "POST",
    headers: {
        Authorization: "Bearer BEARER_TOKEN",
        "Content-Type": "application/json",
    },
    // body: '{ "statement": "regexstatement1", "action": 2 }',
    body: JSON.stringify({
        statement: "regexstatement1",
        action: 2,
    }),
});
```

+++ Python

```py
import requests

headers = {
    'Authorization': 'Bearer BEARER_TOKEN',
    'Content-Type': 'application/json',
}

json_data = {
    'statement': 'regexstatement1',
    'action': 2,
}

response = requests.post('https://liege.dev/api/regex?guildid={guildid}', headers=headers, json=json_data)

# Note: json_data will not be serialized by requests
# exactly as it was in the original request.
#data = '{ "statement": "regexstatement1", "action": 2 }'
#response = requests.post('https://liege.dev/api/regex?guildid={guildid}', headers=headers, data=data)
```

+++ Java

```java
import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpRequest.BodyPublishers;
import java.net.http.HttpResponse;

HttpClient client = HttpClient.newHttpClient();

HttpRequest request = HttpRequest.newBuilder()
    .uri(URI.create("https://liege.dev/api/regex?guildid={guildid}"))
    .POST(BodyPublishers.ofString("{ \"statement\": \"regexstatement1\", \"action\": 2 }"))
    .setHeader("Authorization", "Bearer BEARER_TOKEN")
    .setHeader("Content-Type", "application/json")
    .build();

HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
```

+++ -->

==- Request body
| <b>Name</b> | <b>Type</b> | <b>Description</b> {.compact} |
| ----------- | ----------- | --------------------------------------------------------------------------- |
| guildid | `string` | The Discord ID of the guild the regex statement is to be added to. |
| statement | `string` | The regex statement to be added to the provided guild. |
| action | `int` | The action to be taken automatically upon a regex statement being identified. |

##### AutoAction

<br>

| <b>Action</b>       | <b>Value</b> {.compact} |
| ------------------- | ----------------------- |
| Delete              | 0                       |
| Warn                | 1                       |
| Timeout30m          | 2                       |
| Timeout6h           | 3                       |
| TimeoutIndefinitely | 4                       |
| Kick                | 5                       |
| Ban7d               | 6                       |
| BanPern             | 7                       |

##### Example

<br>

```json
{
    "guildid": "000000000000000000",
    "statement": "regexstatement1",
    "action": 2
}
```

===

---

<div class="api-container-parent">
    <span class="api-method-delete">DELETE</span>
    <span class="api-container-text">https://liege.dev/api<b>/regex</b></span>
</div>

<br>

==- Example request

```sh
curl https://liege.dev/api/regex \
    --header "Authorization: Bearer BEARER_TOKEN" \
    --header "Content-Type: application/json" \
    --request DELETE \
    --data '{ "guildid": "000000000000000000", "statement": "regexstatement1" }'
```

<!-- +++ cURL

```sh
curl https://liege.dev/api/regex?guildid={guildid} \
    --header "Authorization: Bearer BEARER_TOKEN" \
    --header "Content-Type: application/json" \
    --request DELETE \
    --data '{ "guildid": "000000000000000000", "statement": "regexstatement1" }'
```

+++ C#

```c#
using System.Net.Http;
using System.Net.Http.Headers;

HttpClient client = new HttpClient();

HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Delete, "https://liege.dev/api/regex?guildid={guildid}");

request.Headers.Add("Authorization", "Bearer BEARER_TOKEN");

request.Content = new StringContent("{ \"statement\": \"regexstatement1\" }");
request.Content.Headers.ContentType = new MediaTypeHeaderValue("application/json");

HttpResponseMessage response = await client.SendAsync(request);
response.EnsureSuccessStatusCode();
string responseBody = await response.Content.ReadAsStringAsync();

```

+++ JS

```js
fetch("https://liege.dev/api/regex?guildid={guildid}", {
    method: "DELETE",
    headers: {
        Authorization: "Bearer BEARER_TOKEN",
        "Content-Type": "application/json",
    },
    // body: '{ "statement": "regexstatement1" }',
    body: JSON.stringify({
        statement: "regexstatement1",
    }),
});
```

+++ Python

```py
import requests

headers = {
    'Authorization': 'Bearer BEARER_TOKEN',
    'Content-Type': 'application/json',
}

json_data = {
    'statement': 'regexstatement1',
}

response = requests.delete('https://liege.dev/api/regex?guildid={guildid}', headers=headers, json=json_data)

# Note: json_data will not be serialized by requests
# exactly as it was in the original request.
#data = '{ "statement": "regexstatement1" }'
#response = requests.delete('https://liege.dev/api/regex?guildid={guildid}', headers=headers, data=data)

```

+++ Java

```java
import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpRequest.BodyPublishers;
import java.net.http.HttpResponse;

HttpClient client = HttpClient.newHttpClient();

HttpRequest request = HttpRequest.newBuilder()
    .uri(URI.create("https://liege.dev/api/regex?guildid={guildid}"))
    .method("DELETE", BodyPublishers.ofString("{ \"statement\": \"regexstatement1\" }"))
    .setHeader("Authorization", "Bearer BEARER_TOKEN")
    .setHeader("Content-Type", "application/json")
    .build();

HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

```

+++ -->

==- Request body

| Name      | Type     | Description {.compact}                                           |
| --------- | -------- | ---------------------------------------------------------------- |
| guildid   | `string` | The Discord ID of the guild the censor(s) is/are to be added to. |
| statement | `string` | The regex statement to be deleted from the provided guild.       |

##### Example

<br>

```json
{
    "guildid": "000000000000000000",
    "statement": "regexstatement1"
}
```

===
