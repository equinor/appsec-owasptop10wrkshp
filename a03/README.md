# A03 - Injection

## Introduction and background

Injection was previously on the first position on OWASP 10. However, in 2021
OWASP rated this to the third position. 94% of tested applications were tested
for some form of injection with a max incidence rate of 19%, an average
incidence rate of 3%, and 274k occurrences.

An application is vulnerable to attack when:

- User-supplied data is not validated, filtered, or sanitized by the application.
- Dynamic queries or non-parameterized calls without context-aware
escaping are used directly in the interpreter.
- Hostile data is used within object-relational mapping (ORM) search
parameters to extract additional, sensitive records.
- Hostile data is directly used or concatenated. The SQL or command contains
the structure and malicious data in dynamic queries, commands,
or stored procedures.

### CWEs

Notable Common Weakness Enumerations (CWEs):

- [CWE-79:](https://cwe.mitre.org/data/definitions/79.html)
Cross-site Scripting
- [CWE-89:](https://cwe.mitre.org/data/definitions/89.html)
SQL Injection
- [CWE-73:](https://cwe.mitre.org/data/definitions/73.html)
External Control of File Name or Path
- and many more ...

## CVEs

Examples of CVEs :

- [20](https://www.opencve.io/cve?cwe=CWE-20)
- [74](https://www.opencve.io/cve?cwe=CWE-74)
- [75](https://www.opencve.io/cve?cwe=CWE-75)

## Examples of attacker scenarios using juice shop

- `Expired coupon` - Successfully redeem an expired campaign coupon code
- `Payback time` - Place an order that makes you rich

## Primary defenses

OWASP's Injection prevention - [injection prevent rules](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html#injection-prevention-rules) :

- Rule #1 (Perform proper input validation)
- Rule #2 (Use a safe API)
- Rule #3 (Contextually escape user data)

Other relevant cheat sheets:

- [OWASP's Injection prevention](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html)
- [OWASP's Injection prevention in Java](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet_in_Java.html)
- [OWASP's Query parameterization](https://cheatsheetseries.owasp.org/cheatsheets/Query_Parameterization_Cheat_Sheet.html)
