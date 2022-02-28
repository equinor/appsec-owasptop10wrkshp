# OWASP Top 10 Workshop

> DRAFT - DRAFT - DRAFT - DRAFT - DRAFT - DRAFT - DRAFT - DRAFT - DRAFT

> Currently under construction - to be.

![TOP10](./resources/images/top10logo.png)

**Purpose** : Construct a workshop covering the [OWASP Top 10](https://owasp.org/Top10/) 
list of most critical risks concerning web applications.

**OWASP - The Open Web Application Security Project** is an online community
that produces freely-available articles, methodologies, documentation, tools,
and technologies in the field of web application security. The OWASP project
provides free and open resources. It is led by a non-profit called The OWASP
Foundation. The OWASP Top 10 - is the published result of recent research
based on comprehensive data compiled from over 40 partner organizations.
[Source Wikipedia](https://en.wikipedia.org/wiki/OWASP)

**OWASP TOP 10** is a regularly-updated outlining security concerns for web
application security, focusing on the 10 most critical risks. The report is put
together by a team of security experts from all over the world.

---

## Content

### Technical preparations

We will use the Juice Shop as an example of vulnerable web app, to explore
the top 10 vulnerabilities listed by OWASP.

On your device - clone the following repository and verify that you are able
to start the juice shop.

- `git clone https://github.com/juice-shop/juice-shop.git`
- `npm install && npm start`
- Verify that the website is serving requests `http://localhost:3000`

### Introduction - background, history and acronyms

Write background, history on OWASP and common acronyms.

#### OWASP

What / Who is OWASP - brief introduction.

#### Classification and enumeration 

How are TOP 10 list classified and enumerated.

### CWE vs CVE

Differences between CWE and CVE. How to interpret those.

### TOP 10 Risks

Start exploring the TOP 10 risk, understanding and hopefully demonstration.

- [A01:2021](./a01/README.md) – Broken Access Control
- A02:2021 – Cryptographic Failures
- A03:2021 – Injection
- A04:2021 – Insecure Design
- A05:2021 – Security Misconfiguration
- A06:2021 – Vulnerable and Outdated Components
- A07:2021 – Identification and Authentication Failures
- A08:2021 – Software and Data Integrity Failures
- A09:2021 – Security Logging and Monitoring Failures
