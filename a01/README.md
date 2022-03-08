# A01 - Broken Access Control

## Introduction and background

A broken access control leads to users that can possibly act outside their
intended permissions. Failures typically lead to unauthorized information
disclosure, modification, or destruction of all data or performing a business
function outside the user's limits.

### CWEs

Notable Common Weakness Enumerations (CWEs):

- [CWE-200:](https://cwe.mitre.org/data/definitions/200.html) Exposure of
Sensitive Information to an Unauthorized Actor
- [CWE-201:](https://cwe.mitre.org/data/definitions/201.html) Exposure of
Sensitive Information Through Sent Data
- [CWE-352:](https://cwe.mitre.org/data/definitions/352.html) Cross-Site
Request Forgery

## CVEs

Examples of CVEs :
- [200](https://www.opencve.io/cve?cwe=CWE-200)
- [201](https://www.opencve.io/cve?cwe=CWE-201)
- [352](https://www.opencve.io/cve?cwe=CWE-352)

## Examples of attacker scenarios using juice shop

- Login as admin
- Access the administration section of the juice store
- View another user's shopping basket
- Request a hidden resource on server through server

## Primary defenses

- Enforce least privileges
- Deny by default
- Validate permissions on every request
- Thoroughly review the authorization logic of chosen tools and technologies,
implementing custom logic if necessary
- Prefer feature and attribute based access control over RBAC
- Ensure lookup IDs are not accessible even when guessed or cannot
be tampered with
- Enforce authorization checks on static resources
- Verify that authorization checks are performed in the right location
- Exit safely when authorization checks fail
- Implement appropriate logging
- Create unit and integration test cases for authorization logic

More info in OWASP's [Authorization cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html)
