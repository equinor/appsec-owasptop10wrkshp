# A03 - Injection

## Introduction and background

Injection was previously on the first position on OWASP 10. However, in 2020
OWASP rated this to the third position. 94% of the test applications were tested
for some form of injection with a max incidence rate of 19%, an average
incidence rate of 3%, and 274k occurances.

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

TODO: PROPOSALS - NOT YET READY

- **Missing encoding** - Retrieve the photo of Bjoern's cat in "melee
combat-mode"
- **Repetetive registration** - Follow the DRY principle while registering
a user
- **Delaux fraud** - Obtain a Deluxe Membership without paying for it
- **Expired coupon** - Successfully redeem an expired campaign coupon code
- **Payback time** - Place an order that makes you rich

## Primary defenses

Preventing injection requires keeping data separate from commands and queries:

- The preferred option is to use a safe API, which avoids using the interpreter
entirely, provides a parameterized interface, or migrates to Object Relational
Mapping Tools (ORMs). **Note:** Even when parameterized, stored procedures can
still introduce SQL injection if PL/SQL or T-SQL concatenates queries and data
or executes hostile data with EXECUTE IMMEDIATE or exec().
- Use positive server-side input validation. This is not a complete defense as
many applications require special characters, such as text areas or APIs for
mobile applications.
- For any residual dynamic queries, escape special characters using the specific
escape syntax for that interpreter. **Note:** SQL structures such as table
names, column names, and so on cannot be escaped, and thus user-supplied
structure names are dangerous. This is a common issue in report-writing
software.
- Use LIMIT and other SQL controls within queries to prevent mass disclosure
of records in case of SQL injection.

FIXME: Not correct links and cheat sheets yet ....

- [OWASP's transport layer protection cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html)
- [OWASP's user privacy protection cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html)
- [OWASP's password and cryptographic storage cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)
