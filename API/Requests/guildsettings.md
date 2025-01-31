---
label: Guild settings
icon: dot-fill
order: 70
---

<div class="api-container-parent">
    <span class="api-method-get">GET</span>
    <span class="api-container-text">https://liege.dev/api<b>/settings/setting?guildid={guildid}&setting={setting}</b></span>
</div>

<br>

==- Example request

```
curl https://api.liege.dev/settings/setting?guildid={guildid}&setting={setting} \
    --header "Authorization: Bearer BEARER_TOKEN" \
```

<!-- +++ cURL

```sh
curl https://api.liege.dev/settings/setting \
    --header "Authorization: Bearer BEARER_TOKEN" \
    --header "Content-Type: application/json" \
    --request GET \
    --data '{ "guildid": 000000000000000000, "setting": 0 }'
```

+++ C#

```c#
using System.Net.Http;
using System.Net.Http.Headers;

HttpClient client = new HttpClient();

HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Get, "https://api.liege.dev/settings/getsetting");

request.Headers.Add("Authorization", "Bearer BEARER_TOKEN");

request.Content = new StringContent("{ \"guildid\": 000000000000000000, \"setting\": 0 }");
request.Content.Headers.ContentType = new MediaTypeHeaderValue("application/json");

HttpResponseMessage response = await client.SendAsync(request);
response.EnsureSuccessStatusCode();
string responseBody = await response.Content.ReadAsStringAsync();
```

+++ JS

```js
fetch("https://api.liege.dev/settings/getsetting", {
    headers: {
        Authorization: "Bearer BEARER_TOKEN",
        "Content-Type": "application/json",
    },
    body: '{ "guildid": 000000000000000000, "setting": 0 }',
});
```

+++ Python

```py
import requests

headers = {
    'Authorization': 'Bearer BEARER_TOKEN',
    'Content-Type': 'application/json',
}

data = '{ "guildid": 000000000000000000, "setting": 0 }'

response = requests.get('https://api.liege.dev/settings/getsetting', headers=headers, data=data)
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
    .uri(URI.create("https://api.liege.dev/settings/getsetting"))
    .method("GET", BodyPublishers.ofString("{ \"guildid\": 000000000000000000, \"setting\": 0 }"))
    .setHeader("Authorization", "Bearer BEARER_TOKEN")
    .setHeader("Content-Type", "application/json")
    .build();

HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
```

+++ -->

==- Request body

| <b>Name</b> | <b>Type</b> | <b>Description</b> {.compact}                     |
| ----------- | ----------- | ------------------------------------------------- |
| guildid     | `string`    | The Discord guild ID of the guild to be modified. |
| setting     | `int`       | The setting to be retrieved in integer form.      |

##### Setting

<br>

| <b>Setting</b> | <b>Value</b> {.compact} |
| -------------- | ----------------------- |
| Spam           | 0                       |
| Scam           | 1                       |
| Invite         | 2                       |
| DOX            | 3                       |
| AI             | 4                       |
| Raid           | 5                       |

##### Example

<br>

```json
{
    "guildid": "000000000000000000",
    "setting": "0"
}
```

==- Example response

```json
{
    "isEnabled": true,
    "action": 1,
    "slowmodeInterval": 3
}
```

##### `action` is AutoAction

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

===

---

<div class="api-container-parent">
    <span class="api-method-patch">PATCH</span>
    <span class="api-container-text">https://liege.dev/api<b>/settings/setting</b></span>
</div>

<br>

==- Example request

```sh
curl https://api.liege.dev/settings/setting \
    --header "Authorization: Bearer BEARER_TOKEN" \
    --header "Content-Type: application/json" \
    --request PATCH \
    --data '{ "guildid": "000000000000000000", "setting": 1, "config": { "isEnabled": true, "action": 1, "slowmodeInterval": 3 } }'
```

<!-- +++ cURL

```sh
curl https://api.liege.dev/settings/setsetting \
    --header "Authorization: Bearer BEARER_TOKEN" \
    --header "Content-Type: application/json" \
    --request POST \
    --data '{ "guildid": 000000000000000000, "setting": 1, "config": { "isEnabled": true, "action": 1, "slowmodeInterval": 3 } }'
```

+++ C#

```c#
using System.Net.Http;
using System.Net.Http.Headers;

HttpClient client = new HttpClient();

HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, "https://api.liege.dev/settings/setsetting");

request.Headers.Add("Authorization", "Bearer BEARER_TOKEN");

request.Content = new StringContent("{ \"guildid\": 000000000000000000, \"setting\": 1, \"config\": { \"isEnabled\": true, \"action\": 1, \"slowmodeInterval\": 3 } }");
request.Content.Headers.ContentType = new MediaTypeHeaderValue("application/json");

HttpResponseMessage response = await client.SendAsync(request);
response.EnsureSuccessStatusCode();
string responseBody = await response.Content.ReadAsStringAsync();
```

+++ JS

```js
fetch("https://api.liege.dev/settings/setsetting", {
    method: "POST",
    headers: {
        Authorization: "Bearer BEARER_TOKEN",
        "Content-Type": "application/json",
    },
    body: '{ "guildid": 000000000000000000, "setting": 1, "config": { "isEnabled": true, "action": 1, "slowmodeInterval": 3 } }',
});
```

+++ Python

```py
import requests

headers = {
    'Authorization': 'Bearer BEARER_TOKEN',
    'Content-Type': 'application/json',
}

data = '{ "guildid": 000000000000000000, "setting": 1, "config": { "isEnabled": true, "action": 1, "slowmodeInterval": 3 } }'

response = requests.post('https://api.liege.dev/settings/setsetting', headers=headers, data=data)
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
    .uri(URI.create("https://api.liege.dev/settings/setsetting"))
    .POST(BodyPublishers.ofString("{ \"guildid\": 000000000000000000, \"setting\": 1, \"config\": { \"isEnabled\": true, \"action\": 1, \"slowmodeInterval\": 3 } }"))
    .setHeader("Authorization", "Bearer BEARER_TOKEN")
    .setHeader("Content-Type", "application/json")
    .build();

HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
```

+++ -->

==- Request body

| <b>Name</b> | <b>Type</b> | <b>Description</b> {.compact}                                                             |
| ----------- | ----------- | ----------------------------------------------------------------------------------------- |
| guildid     | `string`    | The Discord guild ID of the guild to be modified.                                         |
| setting     | `int`       | The setting to be modified in integer form.                                               |
| config      | `config`    | The new settings that are to be set in the provided guild. See the `config` object below. |

##### `config` object

<br>

| <b>Name</b>      | <b>Type</b> | <b>Description</b> {.compact}                                                            |
| ---------------- | ----------- | ---------------------------------------------------------------------------------------- |
| isEnabled        | `bool`      | Set to true to enable the provided setting; false otherwise.                             |
| action           | `int`       | The action that should be automaticall taken when the setting is triggered.              |
| slowmodeInterval | `int`       | The slowmode interval to be set in the current channel upon the setting being triggered. |

---

##### Setting

<br>

| <b>Setting</b> | <b>Value</b> {.compact} |
| -------------- | ----------------------- |
| Spam           | 0                       |
| Scam           | 1                       |
| Invite         | 2                       |
| DOX            | 3                       |
| AI             | 4                       |
| Raid           | 5                       |

##### `action` is AutoAction

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

---

##### Example

<br>

```json
{
    "guildid": "000000000000000000",
    "setting": 1,
    "config": {
        "isEnabled": true,
        "action": 1,
        "slowmodeInterval": 3
    }
}
```

===
