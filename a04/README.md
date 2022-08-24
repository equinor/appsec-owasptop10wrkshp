# A04 - Insecure Design

## Introduction and background

Secure software requires a secure development lifecycle, some form of secure
design pattern, paved road methodology, secured component library, tooling,
and threat modeling.

A new category for 2021 focuses on risks related to design and architectural
flaws, with a call for more use of threat modeling, secure design patterns, and
reference architectures. The appsec community is trying to move beyond
"shift-left" in the coding space to pre-code activities that are critical
for the principles of Secure by Design. Moving left of "shift-left"....

Insecure design is a broad category representing different weaknesses,
expressed as “missing or ineffective control design.” An insecure design cannot
be fixed by a perfect implementation as by definition, needed security controls
were never created to defend against specific attacks. One of the factors that
contribute to insecure design is the lack of business risk profiling inherent
in the software or system being developed, and thus the failure to determine
what level of security design is required.

### CWEs

Notable Common Weakness Enumerations (CWEs):

- [CWE-209:](https://cwe.mitre.org/data/definitions/209.html)
Generation of Error Message Containing Sensitive Information
- [CWE-256:](https://cwe.mitre.org/data/definitions/256.html)
Unprotected Storage of Credentials
- [CWE-501:](https://cwe.mitre.org/data/definitions/501.html)
Trust Boundary Violation
- [CWE-522:](https://cwe.mitre.org/data/definitions/522.html)
Insufficiently Protected Credentials

## CVEs

>Note to self: Elaborate on some ... examples?

## Examples of attacker scenarios using juice shop

## Primary defenses

[More info in OWASP's XXXXX cheat sheet]()
