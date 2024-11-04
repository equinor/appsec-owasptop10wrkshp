<!-- .slide: data-background-image="./content/images/owasp-logo-white.svg" data-background-size="15%" data-background-position="right 2% top 2%"-->

# OWASP TOP 10

<code style="text-align:left; font-size:0.5em">

- A01:2021 – Broken Access Control
- A02:2021 – Cryptographic Failures
- A03:2021 – Injection
- A04:2021 – Insecure Design
- A05:2021 – Security Misconfiguration
- A06:2021 – Vulnerable and Outdated Components
- A07:2021 – Identification and Authentication Failures
- A08:2021 – Software and Data Integrity Failures
- A09:2021 – Security Logging and Monitoring Failures
- A10:2021 - Server-Side Request Forgery (SSRF)

</code>

Note: 

- Examples of each of the vulnerabilities 
- 1: A user can access another user's account by changing the account ID in the URL.
- 2: Storing passwords in plain text, allowing attackers to read them if the database is compromised.
- 3: An attacker uses an SQL injection to bypass login authentication and access the database.
- 4: The application doesn't limit the number of login attempts, enabling brute-force attacks.
- 5: Leaving debugging information enabled in a production environment, exposing sensitive details.
- 6: Using a web library with a known security flaw that allows remote code execution.
- 7: An attacker can hijack a session because the app doesn’t properly invalidate old session tokens.
- 8: The app downloads dependencies over HTTP without verifying their integrity, risking tampered files.
- 9: No alerts are set up for repeated failed login attempts, allowing undetected brute-force attacks.
- 10: An attacker tricks the server into fetching internal network resources by providing a malicious URL.
