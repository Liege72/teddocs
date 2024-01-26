---
label: AI Moderation
icon: dot-fill
order: 50
---

# AI Moderation

TED will flag a number of different categories that may be harmful to other users. The categories are below:

- Hate
- Hate/threatening
- Harrassment
- Harrassment/threatening
- Self-harm
- Self-harm/intent
- Self-harm/instructions
- Sexual
- Sexual/minors
- Violence
- Violence/graphic

TED uses OpenAI's moderation API endpoint to identify content that falls into the categories listed above. While this endpoint is meant to serve as "a tool you can use to check whether content complies with OpenAI's usage policies," we have found it to be useful in identifying harmful content on Discord.

=== Enabling AI modderation
```
/enables ai_moderation
```
enables AI moderation for: hate, threats, self-harm, sexual content, violence/graphic content.

Right now, TED will only send a message to your servers modlog channel with buttons allowing you to delete the message or warn, timeout, kick, or ban the user.
===

==- Disabling AI moderation
```
/disable ai_moderation
```
Disables AI moderation.
===
