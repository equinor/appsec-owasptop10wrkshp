# A02 - Cryptographic Failures

## Introduction and background

In previously OWASP lists, this vulnerability was named
_Sensitive Data Exposure_. OWASP changed the name due to this is more a broad
symptom rather than a root cause. The focus should be on failures related to
cryptography (or lack thereof), which again could lead to exposure of
sensitive data.

### CWEs

Notable Common Weakness Enumerations (CWEs):

- [CWE-259:](https://cwe.mitre.org/data/definitions/259.html)
Use of Hard-coded Password
- [CWE-327:](https://cwe.mitre.org/data/definitions/327.html)
Broken or Risky Crypto Algorithm
- [CWE-331:](https://cwe.mitre.org/data/definitions/331.html)
Insufficient Entropy

## CVEs

Examples of CVEs :

- [259](https://www.opencve.io/cve?cwe=CWE-259)
- [327](https://www.opencve.io/cve?cwe=CWE-327)
- [331](https://www.opencve.io/cve?cwe=CWE-331)

## Examples of attacker scenarios using juice shop

- **`Weird Crypto`** - Inform the shop about an algorithm or library it should definitely not use the way it does.
  - Hint: What is known weak cryptographic algorithms?<!-- .element: style="font-size:0.8em"-->
  - Create a new juice-shop user and change password for your new user with an easy one e.g 'admin123' and observe response from /change-password (In the Firefox tool)<!-- .element: style="font-size:0.8em"-->
  - For feedback use http://&lt;yourhost&gt;/#/contact<!-- .element: style="font-size:0.8em"-->
- `Forged Coupon` - Manipulate shopping coupon by discovering
crypto algorithm.

## Primary defenses

- [OWASP's transport layer protection cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html)
- [OWASP's user privacy protection cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html)
- [OWASP's password and cryptographic storage cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)
