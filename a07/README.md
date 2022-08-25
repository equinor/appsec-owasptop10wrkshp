# A07 - Identification and Authentication Failures

## Introduction and background

In previous lists this was named as _Broken Authentication_. Confirmation of the
user's identity, authentication, and session management is critical to protect
against authentication-related attacks. There may be authentication weaknesses
if the application:

- Permits automated attacks such as credential stuffing, where the attacker has
a list of valid usernames and passwords.
- Permits brute force or other automated attacks.
- Permits default, weak, or well-known passwords, such as "Password1" or
"admin/admin".
- Uses weak or ineffective credential recovery and forgot-password processes,
such as "knowledge-based answers," which cannot be made safe.
- Uses plain text, encrypted, or weakly hashed passwords data stores
(see A02:2021-Cryptographic Failures).
- Has missing or ineffective multi-factor authentication.
- Exposes session identifier in the URL.
- Reuse session identifier after successful login.
- Does not correctly invalidate Session IDs. User sessions or authentication
tokens (mainly single sign-on (SSO) tokens) aren't properly invalidated during
logout or a period of inactivity.

### CWEs

Notable Common Weakness Enumerations (CWEs):

- [CWE-297:](https://cwe.mitre.org/data/definitions/297.html)
Improper Validation of Certificate with Host Mismatch

- [CWE-287:](https://cwe.mitre.org/data/definitions/287.html)
Improper Authentication

- [CWE-384:](https://cwe.mitre.org/data/definitions/384.html)
Session Fixation

## CVEs

- [CWE-297](https://www.opencve.io/cve?cwe=CWE-297)
- [CWE-287](https://www.opencve.io/cve?cwe=CWE-287)
- [CWE-384](https://www.opencve.io/cve?cwe=CWE-384)

## Examples of attacker scenarios using juice shop

- `Password Strength` -
Log in with the administrator's user credentials without previously changing
them or applying SQL Injection.
- `GDPR Data Erasure` - Log in with Chris' erased user account.

## Primary defenses

- Where possible, implement multi-factor authentication to prevent automated
credential stuffing, brute force, and stolen credential reuse attacks.
- Do not ship or deploy with any default credentials, particularly for
admin users.
- Implement weak password checks, such as testing new or changed passwords
against the top 10,000 worst passwords list.
- Align password length, complexity, and rotation policies with National
Institute of Standards and Technology (NIST) 800-63b's guidelines in section
5.1.1 for Memorized Secrets or other modern, evidence-based password policies.
- Ensure registration, credential recovery, and API pathways are hardened
against account enumeration attacks by using the same messages for all outcomes.
- Limit or increasingly delay failed login attempts, but be careful not to
create a denial of service scenario. Log all failures and alert administrators
when credential stuffing, brute force, or other attacks are detected.
- Use a server-side, secure, built-in session manager that generates a new
random session ID with high entropy after login. Session identifier should not
be in the URL, be securely stored, and invalidated after logout, idle, and
absolute timeouts.

More info in OWASP's XXXXX cheat sheets :

- [OWASP Cheat Sheet: Authentication](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)
- [OWASP Cheat Sheet: Credential Stuffing](https://cheatsheetseries.owasp.org/cheatsheets/Credential_Stuffing_Prevention_Cheat_Sheet.html)
- [OWASP Cheat Sheet: Forgot Password](https://cheatsheetseries.owasp.org/cheatsheets/Forgot_Password_Cheat_Sheet.html)
- [OWASP Cheat Sheet: Session Management](https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html)
