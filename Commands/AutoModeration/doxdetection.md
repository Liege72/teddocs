---
label: DOX Detection
icon: dot-fill
order: 70
---

# Dox Detection

At the moment, TED can accurately detect the following types of DOX material/content:
- Home addresses

!!!warning
While false positives are rare, they can still happen. Please [join our support server](https://discord.gg/uuDZzBsNvA) if you encounter a false positive.
!!!

=== Enabling DOX detection
```
/enable dox_detection <action> <slowmode?>
```
Enables DOX detection; the bot will take action when content that may DOX a user is detected. The provided action will be taken and the provided slowmode (optional) will be set in the channel.
===

==- Disabling DOX detection
```
/disable dox_detection
```
Disabled DOX detection.
===

---

### Available Actions
{.compact}
Action   | Description
---    | ---
Delete | Deletes the message containing the censored term
Timeout30m | Automatically puts the user in timeout for 30 minutes
Timeout6h | Automatically puts the user in timeout for 6 hours
TimeoutIndefinetely | Automatically puts the user in timeout for 28 days
Kick | Automatically kicks the user
Ban | Automatically bans the user permanently 

A message containing DOX content will automatically be deleted in addition the action selected.