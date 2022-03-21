# A04 - Insecure Design

## Introduction and background

A broad new category for 2021 that focuses on risks related to design and architectural flaw, representing different weaknesses expressed as "missing or ineffective control design".

Insecure design is not to be confused with insecure implementation, as they have different root causes and remediation.

One of the factors that contribute to insecure design is the lack of business risk profiling inherent in the software or system being developed, and thus the failure to determine what level of security design is required.

- Requirements and Resource Management
- Secure Design
- [**Threat Modeling**](https://equinor.github.io/appsec/resources/threat_modeling.html)
- Secure Development Lifecycle
- "Pre-code activities"

### CWEs

Notable Common Weakness Enumerations (CWEs):

- [CWE-209:](https://cwe.mitre.org/data/definitions/209.html)
Generation of Error Message Containing Sensitive Information
- [CWE-256:](https://cwe.mitre.org/data/definitions/256.html)
Plaintext Storage of a Password
- [CWE-501:](https://cwe.mitre.org/data/definitions/501.html)
Trust Boundary Violation
- and many more ...

## CVEs

- [209](https://www.opencve.io/cve?cwe=CWE-209)
- [256](https://www.opencve.io/cve?cwe=CWE-256)

## Examples of attacker scenarios using juice shop

- **Error Handling** - Provoke an error that is neither very gracefully nor consistently handled.
- **Forgotten Password** - Credential recovery workflow that include "questions and answers" are prohibited by NIST 800-63b, OWASP ASVS, OWASP Top 10. Questions and answers cannot be trusted as evidence of identity as more than one person can know the answers, which is why they are prohibited.

## Primary defenses

- Establish and use a secure development lifecycle with AppSec professionals to help evaluate and design security and privacy-related controls
- Establish and use a library of secure design patterns or paved road ready to use components
- Use threat modeling for critical authentication, access control, business logic, and key flows
- Integrate security language and controls into user stories
- Integrate plausibility checks at each tier of your application (from frontend to backend)
- Write unit and integration tests to validate that all critical flows are resistant to the threat model. Compile use-cases and misuse-cases for each tier of your application.
- Segregate tier layers on the system and network layers depending on the exposure and protection needs
- Segregate tenants robustly by design throughout all tiers
- Limit resource consumption by user or service



[Resources in OWASP Top 10 for #4 Insecure Design](https://owasp.org/Top10/A04_2021-Insecure_Design/#references)
