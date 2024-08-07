---
label: Channel settings
icon: dot-fill
order: 80
---

<div class="api-container-parent">
    <span class="api-method-patch">PATCH</span>
    <span class="api-container-text">https://liege.dev/api<b>/settings/channels/modlog</b></span>
</div>

<br>

==- Example request

```sh
curl https://api.liege.dev/settings/channels/modlog \
    --header "Authorization: Bearer BEARER_TOKEN" \
    --header "Content-Type: application/json" \
    --request PATCH \
    --data '{ "guildid": "000000000000000000", "channelid": "000000000000000000" }'
```

<!-- +++ cURL

```sh
curl https://api.liege.dev/settings/setmodlogchannel \
    --header "Authorization: Bearer BEARER_TOKEN" \
    --header "Content-Type: application/json" \
    --request POST \
    --data '{ "guildid": 000000000000000000, "channelid": 000000000000000000 }'
```

+++ C#

```c#
using System.Net.Http;
using System.Net.Http.Headers;

HttpClient client = new HttpClient();

HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, "https://api.liege.dev/settings/setmodlogchannel");

request.Headers.Add("Authorization", "Bearer BEARER_TOKEN");

request.Content = new StringContent("{ \"guildid\": 000000000000000000, \"channelid\": 000000000000000000 }");
request.Content.Headers.ContentType = new MediaTypeHeaderValue("application/json");

HttpResponseMessage response = await client.SendAsync(request);
response.EnsureSuccessStatusCode();
string responseBody = await response.Content.ReadAsStringAsync();
```

+++ JS

```js
fetch("https://api.liege.dev/settings/setmodlogchannel", {
    method: "POST",
    headers: {
        Authorization: "Bearer BEARER_TOKEN",
        "Content-Type": "application/json",
    },
    body: '{ "guildid": 000000000000000000, "channelid": 000000000000000000 }',
});
```

+++ Python

```py
import requests

headers = {
    'Authorization': 'Bearer BEARER_TOKEN',
    'Content-Type': 'application/json',
}

data = '{ "guildid": 000000000000000000, "channelid": 000000000000000000 }'

response = requests.post('https://api.liege.dev/settings/setmodlogchannel', headers=headers, data=data)
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
    .uri(URI.create("https://api.liege.dev/settings/setmodlogchannel"))
    .POST(BodyPublishers.ofString("{ \"guildid\": 000000000000000000, \"channelid\": 000000000000000000 }"))
    .setHeader("Authorization", "Bearer BEARER_TOKEN")
    .setHeader("Content-Type", "application/json")
    .build();

HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
```

+++ -->

==- Request body
| <b>Name</b> | <b>Type</b> | <b>Description</b> {.compact} |
| ----------- | ----------- | ------------------------------------------------------------------- |
| guildid | `string` | The Discord guild ID of the guild to be modified. |
| channelid | `string` | The Discord channel ID of the channel to be set to receive modlogs. |

##### Example

<br>

```json
{
    "guildid": "000000000000000000",
    "channelid": "000000000000000000"
}
```

===

---

<div class="api-container-parent">
    <span class="api-method-patch">PATCH</span>
    <span class="api-container-text">https://liege.dev/api<b>/settings/channels/eventlog</b></span>
</div>

<br>

==- Example request

```sh
curl https://api.liege.dev/settings/channels/eventlog \
    --header "Authorization: Bearer BEARER_TOKEN" \
    --header "Content-Type: application/json" \
    --request PATCH \
    --data '{ "guildid": "000000000000000000", "channelid": "000000000000000000" }'
```

<!-- +++ cURL

```sh
curl https://api.liege.dev/settings/seteventslogchannel \
    --header "Authorization: Bearer BEARER_TOKEN" \
    --header "Content-Type: application/json" \
    --request POST \
    --data '{ "guildid": 000000000000000000, "channelid": 000000000000000000 }'
```

+++ C#

```c#
using System.Net.Http;
using System.Net.Http.Headers;

HttpClient client = new HttpClient();

HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, "https://api.liege.dev/settings/seteventslogchannel");

request.Headers.Add("Authorization", "Bearer BEARER_TOKEN");

request.Content = new StringContent("{ \"guildid\": 000000000000000000, \"channelid\": 000000000000000000 }");
request.Content.Headers.ContentType = new MediaTypeHeaderValue("application/json");

HttpResponseMessage response = await client.SendAsync(request);
response.EnsureSuccessStatusCode();
string responseBody = await response.Content.ReadAsStringAsync();
```

+++ JS

```js
fetch("https://api.liege.dev/settings/seteventslogchannel", {
    method: "POST",
    headers: {
        Authorization: "Bearer BEARER_TOKEN",
        "Content-Type": "application/json",
    },
    body: '{ "guildid": 000000000000000000, "channelid": 000000000000000000 }',
});
```

+++ Python

```py
import requests

headers = {
    'Authorization': 'Bearer BEARER_TOKEN',
    'Content-Type': 'application/json',
}

data = '{ "guildid": 000000000000000000, "channelid": 000000000000000000 }'

response = requests.post('https://api.liege.dev/settings/seteventslogchannel', headers=headers, data=data)
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
    .uri(URI.create("https://api.liege.dev/settings/seteventslogchannel"))
    .POST(BodyPublishers.ofString("{ \"guildid\": 000000000000000000, \"channelid\": 000000000000000000 }"))
    .setHeader("Authorization", "Bearer BEARER_TOKEN")
    .setHeader("Content-Type", "application/json")
    .build();

HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
```

+++ -->

==- Request body
| <b>Name</b> | <b>Type</b> | <b>Description</b> {.compact} |
| ----------- | ----------- | ---------------------------------------------------------------------------- |
| guildid | `string` | The Discord guild ID of the guild to be modified. |
| channelid | `string` | The Discord channel ID of the channel to be set to receive guild event logs. |

##### Example

<br>

```json
{
    "guildid": "000000000000000000",
    "channelid": "000000000000000000"
}
```

===
