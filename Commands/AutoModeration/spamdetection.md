---
label: Spam Detection
icon: dot-fill
order: 60
---

# Spam Detection

TED is able to quickly count the amount of messages a user sends and use that information to detect spam and raids. Not only does TED count these messages, but it will only punish users based on their recent activity. TED will be a little more forgiving with trusted users while users that are considered threats will be punished harsher. 

More trusted users will be issued a warning or two before TED takes more serious actions. Less trusted users may be given no warning at all and action will be taken instantly after spam is detected. 

!!!warning
Sometimes TED will send two warnings or timeout messages when only one should be sent. Please join the [support server](https://discord.gg/uuDZzBsNvA) if you encounter an issue like this.
!!!

=== Enabling spam detection
```
/enable spam_detection <action> <slowmode?>
```
Enables spam detection. The provided action will be taken and the provided slowmode (optional) will be set in the channel.
===

==- Disabling spam detection
```
/disable spam_detection
```
Disables spam detection.
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

A message containing a Discord server invite link will automatically be deleted in addition the action selected.