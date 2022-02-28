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

>Note to self: Elaborate on some ... examples?

## Examples of attacker scenarios using juice shop

- Login as admin
- Access the administration section of the juice store
- View another user's shopping basket
- Request a hidden resource on server through server

## Primary defenses

- Enforce Least Privileges
- Deny by default
- Validate the Permissions on Every Request
- Thoroughly Review the Authorization Logic of Chosen Tools and Technologies, Implementing Custom Logic if Necessary
- Prefer Feature and Attribute Based Access Control over RBAC
- Ensure Lookup IDs are Not Accessible Even When Guessed or Cannot Be Tampered With
- Enforce Authorization Checks on Static Resources
- Verify that Authorization Checks are Performed in the Right Location
- Exit Safely when Authorization Checks Fail
- Implement Appropriate Logging
- Create Unit and Integration Test Cases for Authorization Logic

>Note to self: Elaborate on some ... examples?

[More info in OWASP's Authorization cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html)
