# A05 - Security Misconfiguration

## Introduction and background

When creating the list for OWASP TOP 10, 90% of applications were tested for
misconfiguration. The average incidence rate of 4%, and it was over 208k
occurences of a Common Weakness Enumeration (CWE) in this risk category.
With more shifts into highly configurable software, it's not surprising to see
this category moving up in the list.

### CWEs

Notable Common Weakness Enumerations (CWEs):

- [CWE-16:](https://cwe.mitre.org/data/definitions/16.html)
Configuration
- [CWE-611:](https://cwe.mitre.org/data/definitions/611.html)
Improper Restriction of XML External Entity Reference

## CVEs

- [CWE-16](https://www.opencve.io/cve?cwe=CWE-16)
- [CWE-611](https://www.opencve.io/cve?cwe=CWE-611)

## Examples of attacker scenarios using juice shop

- `Error Handling` -
_Provoke an error that is neither very gracefully nor consistently handled._
- `Deprecated Interface` -
_Use a deprecated B2B interface that was not properly shut down._

## Primary defenses

[More info in OWASP's e.g. Error handling cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/Error_Handling_Cheat_Sheet.html)
