---
label: Censoring Terms & Regex
# icon: circle-slash
icon: dot-fill
order: 90
---

# Censoring Terms & Regex

### Available Actions
{.compact}
Action   | Description
---    | ---
Delete | Deletes the message containing the censored term
Warn | Automatically warns the user
Timeout30m | Automatically puts the user in timeout for 30 minutes
Timeout6h | Automatically puts the user in timeout for 6 hours
TimeoutIndefinetely | Automatically puts the user in timeout for 28 days
Kick | Automatically kicks the user
Ban7d | Automatically bans the user for 7 days
BanPerm | Automatically bans the user permanently 

A message containing a censored term will automatically deleted in addition the action selected.


### Censoring Terms and Phrases
!!!primary
This feature is case insensitive and will look for substrings; e.g. censoring "ass" would detect "associate" or "class"
!!!

=== Censoring a term
```
/censor add <term> <action>
```
Adds the provided phrase to the censor list, no longer allowing messages with the phrase.
===

=== Uncensoring a term
```
/censor remove <term> <action>
```
Removes the provided phrase from the censor list, allowing messages with the phrase.
===

=== Viewing censored terms
```
/censor list
```
Lists all the active censored terms/phrases in the current guild.
===

---

### Censoring with Regex
!!!warning
If you are not familiar with Regex (regular expressions), we suggest you take some time to become familiar with it as inputting certain statements can cause performance issues with TED. https://regexr.com is a good website to help you start learning.
!!!

=== Adding a regex statement
```
/regex add <expression> <action>
```
Adds the provided regex statement to the bots watchlist along with the provided action.
===

=== Removing a regex statement
```
/regex remove <expression>
```
Adds the provided regex statement to the bots watchlist along with the provided action.
===

=== Viewing regex statements
```
/regex list
```
Lists all the active censored terms/phrases in the current guild.
===

This is a premium feature that can be purchased [here](https://premium.liege.dev) for just **$2.99** a month.