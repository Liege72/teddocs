---
label: Whitelisting
# icon: issue-closed
icon: dot-fill
order: 80
---

# Whitelisting Terms

!!!warning
Censored terms are prioritized; should a message contain both a censored and a whitelisted word, the message will be deleted.
!!!

=== Whitelisting a term
```
/whitelist add <term>
```
Adds the provided term to the whitelist, always allowing messages with it to be sent.
===

=== Unwhitelisting a term
```
/whitelist remove <term>
```
Removes the provided term from the whitelist.
===

=== Viewing the whitelist
```
/whitelist list
```
Lists the guilds term whitelist.
===