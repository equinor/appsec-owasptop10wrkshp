# A06 - Vulnerable and Outdated Components

## Introduction and background

Vulnerable Components are hard to test and assess risk for the OWASP group, and
is the only category to not have any Common Vulnerability and Exposures (CVEs)
mapped to the included CWEs.

Start with this mindset - **"You are likely vulnerable"**:

- If you do not know the versions of all components you use (both client-side
and server-side). This includes components you directly use as well as nested
dependencies.
- If the software is vulnerable, unsupported, or out of date. This includes the
OS, web/application server, database management system (DBMS), applications,
APIs and all components, runtime environments, and libraries.
- If you do not scan for vulnerabilities regularly and subscribe to security
bulletins related to the components you use.
- If you do not fix or upgrade the underlying platform, frameworks, and
dependencies in a risk-based, timely fashion. This commonly happens in
environments when patching is a monthly or quarterly task under change control,
leaving organizations open to days or months of unnecessary exposure to fixed
vulnerabilities.
- If software developers do not test the compatibility of updated, upgraded, or
patched libraries.
- If you do not secure the components’ configurations
(see A05:2021-Security Misconfiguration).

### CWEs

Notable Common Weakness Enumerations (CWEs):

- [CWE-1104:](https://cwe.mitre.org/data/definitions/1104.html)
Use of unmaintained third-party components

## CVEs

- [None related to 1104](https://)

## Examples of attacker scenarios using juice shop

Typically scenario:

- Components run with the same privileges as the application itself, so flaws
in any component can result in serious impact. Such flaws can be accidental
(e.g., coding error) or intentional (e.g., a backdoor in a component).

Juice-Shop:

- `Vulnerable Library` -
Inform the shop about a vulnerable library it is using. Mention the exact
library name and version in your comment.
- `Arbitrary File Write` -
Overwrite the Legal Information file. This challenge is not available on Docker

## Primary defenses

There should be a patch management process in place to:

- Remove unused dependencies, unnecessary features, components, files, and documentation.
- Only obtain components from official sources over secure links. Prefer signed packages to reduce the chance of including a modified, malicious component (See A08:2021-Software and Data Integrity Failures).
- Monitor for libraries and components that are unmaintained or do not create security patches for older versions. If patching is not possible, consider deploying a virtual patch to monitor, detect, or protect against the discovered issue.
- Use Equinor's preferd tool for scanning dependencies / components - SNYK

Ensure an ongoing plan for monitoring, triaging, and applying updates or configuration changes for the lifetime of the application or portfolio.

[More info in OWASP's XXXXX cheat sheet]()
