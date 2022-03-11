# A03 - Injection

## Introduction and background

### CWEs

Notable Common Weakness Enumerations (CWEs):

- [CWE-20:](https://cwe.mitre.org/data/definitions/20.html)
Improper Input Validation
- [CWE-74:](https://cwe.mitre.org/data/definitions/74.html)
Improper Neutralization of Special Elements in Output Used by a Downstream Component ('Injection')
- [CWE-75:](https://cwe.mitre.org/data/definitions/75.html)
Failure to Sanitize Special Elements into a Different Plane (Special Element Injection)
- and many more ...

## CVEs

Examples of CVEs :

- [20](https://www.opencve.io/cve?cwe=CWE-20)
- [74](https://www.opencve.io/cve?cwe=CWE-74)
- [75](https://www.opencve.io/cve?cwe=CWE-75)

## Examples of attacker scenarios using juice shop

NB NB : PROPOSALS

- **Missing encoding** - Retrieve the photo of Bjoern's cat in "melee combat-mode"
- **Repetetive registration** - Follow the DRY principle while registering a user
- **Delaux fraud** - Obtain a Deluxe Membership without paying for it
- **Expired coupon** - Successfully redeem an expired campaign coupon code
- **Payback time** - Place an order that makes you rich

## Primary defenses

FIX FIX

- [OWASP's transport layer protection cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/Transport_Layer_Protection_Cheat_Sheet.html)
- [OWASP's user privacy protection cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html)
- [OWASP's password and cryptographic storage cheat sheet](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)
