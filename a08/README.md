# A08 - Software and Data Integrity Failures

## Introduction and background

This category focuses on making assumptions related to software updates,
critical data, and CI/CD pipelines without verifying integrity.

Software and data integrity failures relate to code and infrastructure that does not protect against integrity violations. An example of this is where an application relies upon plugins, libraries, or modules from untrusted sources, repositories, and content delivery networks (CDNs). An insecure CI/CD pipeline can introduce the potential for unauthorized access, malicious code, or system compromise. Lastly, many applications now include auto-update functionality, where updates are downloaded without sufficient integrity verification and applied to the previously trusted application. Attackers could potentially upload their own updates to be distributed and run on all installations. Another example is where objects or data are encoded or serialized into a structure that an attacker can see and modify is vulnerable to insecure deserialization.

### CWEs

Notable Common Weakness Enumerations (CWEs):

- [CWE-829:](https://cwe.mitre.org/data/definitions/829.html)
Inclusion of Functionality from Untrusted Control Sphere
- [CWE-494:](https://cwe.mitre.org/data/definitions/494.html)
Download of Code Without Integrity Check
- [CWE-502:](https://cwe.mitre.org/data/definitions/502.html)
Deserialization of Untrusted Data

## CVEs

- [CWE-829](https://www.opencve.io/cve?cwe=CWE-829)
- [CWE-494](https://www.opencve.io/cve?cwe=CWE-494)
- [CWE-502](https://www.opencve.io/cve?cwe=CWE-502)

## Examples of attacker scenarios using juice shop

`N/A` - None available

## Primary defenses

- Use digital signatures or similar mechanisms to verify the software or
data is from the expected source and has not been altered.
- Ensure libraries and dependencies, such as npm or Maven, are consuming
trusted repositories. If you have a higher risk profile, consider hosting an
internal known-good repository that's vetted.
- Ensure that a software supply chain security tool, such as OWASP Dependency
Check or OWASP CycloneDX, is used to verify that components do not contain
known vulnerabilities
- Ensure that there is a review process for code and configuration changes to
minimize the chance that malicious code or configuration could be introduced
into your software pipeline.
- Ensure that your CI/CD pipeline has proper segregation, configuration, and
access control to ensure the integrity of the code flowing through the build
and deploy processes.
- Ensure that unsigned or unencrypted serialized data is not sent to untrusted
clients without some form of integrity check or digital signature to detect
tampering or replay of the serialized data

More info in OWASP's cheat sheets:

- OWASP Cheat Sheet: Software Supply Chain Security - Coming Soon
- OWASP Cheat Sheet: Secure build and deployment - Coming Soon
- [OWASP Cheat Sheet: Infrastructure as Code](https://cheatsheetseries.owasp.org/cheatsheets/Infrastructure_as_Code_Security_Cheat_Sheet.html)
- [OWASP Cheat Sheet: Deserialization](https://www.owasp.org/index.php/Deserialization_Cheat_Sheet)

