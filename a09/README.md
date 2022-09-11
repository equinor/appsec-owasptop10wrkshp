# A09 - Security Logging and Monitoring Failures

## Introduction and background

Logging and monitoring can be challenging to test, often involving interviews or
asking if attacks were detected during a penetration test. This category is to
help detect, escalate, and respond to active breaches. Without logging and
monitoring, breaches cannot be detected. Insufficient logging, detection,
monitoring, and active response occurs any time:

- Auditable events, such as logins, failed logins, and high-value transactions,
are not logged.
- Warnings and errors generate no, inadequate, or unclear log messages.
- Logs of applications and APIs are not monitored for suspicious activity.
- Logs are only stored locally.
- Appropriate alerting thresholds and response escalation processes are not in
place or effective.
- Penetration testing and scans by dynamic application security testing (DAST)
tools (such as OWASP ZAP) do not trigger alerts.
- The application cannot detect, escalate, or alert for active attacks in
real-time or near real-time.
- You are vulnerable to information leakage by making logging and alerting
events visible to a user or an attacker (see A01:2021-Broken Access Control).

### CWEs

There isn't much CVE/CVSS data for this category, but detecting and responding
to breaches is critical.

Notable Common Weakness Enumerations (CWEs):

- [CWE-778:](https://cwe.mitre.org/data/definitions/778.html)
Insufficient Logging to include
- [CWE-117:](https://cwe.mitre.org/data/definitions/117.html)
Improper Output Neutralization for Logs
- [CWE-223:](https://cwe.mitre.org/data/definitions/223.html)
Omission of Security-relevant Information
- [CWE-532:](https://cwe.mitre.org/data/definitions/532.html)
Insertion of Sensitive Information into Log File

## CVEs

- [CWE-778](https://www.opencve.io/cve?cwe=CWE-778)
- [CWE-117](https://www.opencve.io/cve?cwe=CWE-117)
- [CWE-223](https://www.opencve.io/cve?cwe=CWE-223)
- [CWE-532](https://www.opencve.io/cve?cwe=CWE-532)

## Examples of attacker scenarios using juice shop

`N/A` - None available

## Primary defenses

Developers should implement some or all the following controls, depending on
the risk of the application:

- Ensure all login, access control, and server-side input validation failures
can be logged with sufficient user context to identify suspicious or malicious
accounts and held for enough time to allow delayed forensic analysis.
- Ensure that logs are generated in a format that log management solutions can
easily consume.
- Ensure log data is encoded correctly to prevent injections or attacks on the
logging or monitoring systems.
- Ensure high-value transactions have an audit trail with integrity controls to
prevent tampering or deletion, such as append-only database tables or similar.
- DevSecOps teams should establish effective monitoring and alerting such that
suspicious activities are detected and responded to quickly.
- Establish or adopt an incident response and recovery plan, such as National
Institute of Standards and Technology (NIST) 800-61r2 or later.

More info in OWASP's cheat sheets:

- [OWASP Cheat Sheet: Application Logging Vocabulary](https://cheatsheetseries.owasp.org/cheatsheets/Application_Logging_Vocabulary_Cheat_Sheet.html)
- [OWASP Cheat Sheet: Logging](https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html)
