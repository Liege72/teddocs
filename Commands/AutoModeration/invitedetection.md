---
label: Invite Detection
icon: dot-fill
order: 50
---

# Invite Detection

=== Enabling invite detection
```
/enable invite_detection <action> <slowmode?>
```
Enables Discord server invite link detection. The provided action will be taken and the provided slowmode (optional) will be set in the channel.
===

==- Disabling invite detection
```
/disable invite_detection
```
Disables Discord server invite link detection.
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