---
label: Infractions
# icon: shield-check
icon: dot-fill
order: 100
---

# Moderation

### Infraction Commands

==- Warn
```
/warn <user> <reason>
```
Warns the provided user for the provided reason.
===

==- Timeout
```
/timeout <user> <time> <reason>
```
Times out the provided user for the provided time and reason.

The time parameter should be formatted `{integer}{character};` like the example below:
```
/timeout Liege#8888 2h Breaking Rules
```
---
```
/untimeout <user>
```
Removes the provided users timeout if they are timed out.
===

==- Kick
```
/kick <user> <reason>
```
Kicks the provided user for the provided reason.
===

==- Ban
```
/ban <user> <reason> <prune-days?> <days?>
```
Bans the provided user for `days` days for the provided reason, deleting their messages from the past `prune-days` days.
===

---

### Log Command
```
/logs <user>
```
Displays the provided users logs.

---
### Delete Case/Log
```
/delete-case
```

Deletes the case associated with the provided case-id.

---

### Images

--![Example of a warning](./images/Warn.png)
--![Example of a users logs](./images/Modlogs.png)