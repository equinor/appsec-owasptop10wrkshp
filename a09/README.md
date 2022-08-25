# A09 - Security Logging and Monitoring Failures

## Introduction and background

Logging and monitoring can be challenging to test, often involving interviews or
asking if attacks were detected during a penetration test.
This category is to help detect, escalate, and respond to active breaches. Without logging and monitoring, breaches cannot be detected. Insufficient logging, detection, monitoring, and active response occurs any time:

Auditable events, such as logins, failed logins, and high-value transactions, are not logged.

Warnings and errors generate no, inadequate, or unclear log messages.

Logs of applications and APIs are not monitored for suspicious activity.

Logs are only stored locally.

Appropriate alerting thresholds and response escalation processes are not in place or effective.

Penetration testing and scans by dynamic application security testing (DAST) tools (such as OWASP ZAP) do not trigger alerts.

The application cannot detect, escalate, or alert for active attacks in real-time or near real-time.

You are vulnerable to information leakage by making logging and alerting events visible to a user or an attacker (see A01:2021-Broken Access Control).

### CWEs

There isn't much CVE/CVSS data for this category, but detecting and responding to breaches is critical. 

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


## Primary defenses


[More info in OWASP's XXXXX cheat sheet]()
