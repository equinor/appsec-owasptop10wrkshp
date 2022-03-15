# OWASP Top 10 Workshop

![TOP10](./resources/images/top10logo.png)

## Purpose 💭

The purpose of this workshop is to cover [OWASP Top 10](https://owasp.org/Top10/) 
list of most critical risks concerning web applications. Why is it important
for you to know about these vulnerabilities? As a developer, you and your code
are prime targets for web attacks. Fluency in the most prevalent kinds of
security vulnerabilities is vital for ensuring your code is secure at all times. 

## Learning objectives 👩🏽‍🏫

- Awareness and understanding of common risks concerning web apps
- Experience in exploiting common vulnerabilities by hands-on participation
- Awareness and understanding of CWEs and CVEs

---

## Technical preparations 🛠

### Juice Shop - the example app

This workshop uses an fictive _Juice Shop_, where customers can order juice
form a website. The app is an example app, presented with vulnerabilities, to
explore, discover all for learning purposes. The _Juice Shop_ web application 
covers all of OWASP Top 10 vulnerabilities. 

### GitHub repo and Docker 🏗

On your device - clone the following repository and verify that you are able
to build the docker image and run the juice shop. (NB: If you are using Mac
with ARM architecture (M1) there is a specific Dockerfile for those.)

- `git clone` this repository: `https://github.com/juice-shop/juice-shop.git`
- Change directory to the cloned dir: `~/juice-shop/`
- Build docker image:
    - Intel: `docker image build . -t juiceshop -f ./Dockerfile`
    - ARM (M1): `docker image build . -t juiceshop -f ./Dockerfile.arm`
- Run container: `docker run -p 3000:3000 juiceshop`
- Verify that the website is serving requests: `http://localhost:3000`

### Browser 🧑🏻‍💻

In this workshop we use Firefox 🦊 as our browser. Please ensure you have the
latest version installed, either [stable](https://www.mozilla.org/en-US/firefox/new/)
or the [developer version](https://www.mozilla.org/en-US/firefox/developer/).

## Content 📝

### TOP 10 Risks

In the workshop we will do a walk-through of the top 10 risks. This to get
familiar with type of vulnerability, some related CWEs and CVEs, exploit them
as attackers and discuss possible mitigation.

- [A01:2021](./a01/README.md) – Broken Access Control
- [A02:2021](./a02/README.md) – Cryptographic Failures
- [A03:2021](./a03/README.md) – Injection
- [A04:2021](./a04/README.md) – Insecure Design
- A05:2021 – Security Misconfiguration
- A06:2021 – Vulnerable and Outdated Components
- A07:2021 – Identification and Authentication Failures
- A08:2021 – Software and Data Integrity Failures
- A09:2021 – Security Logging and Monitoring Failures
- A10:2021 - Server-Side Request Forgery (SSRF)

---

## What is OWASP? 🐝

**OWASP - The Open Web Application Security Project** is an online community
that produces freely-available articles, methodologies, documentation, tools,
and technologies in the field of web application security. The OWASP project
provides free and open resources. It is led by a non-profit called The OWASP
Foundation.

**OWASP TOP 10** is a regularly-updated outlining security concerns for web
application security, focusing on the 10 most critical risks. The report is put
together by a team of security experts from all over the world. The Top 10 list
is a valuable tool for understanding some of the major risks in web
applications today from an attacker's perspective. The list is the result of
recent research based on comprehensive data compiled from over 40 partner
organizations. [Source Wikipedia](https://en.wikipedia.org/wiki/OWASP)

[Source - OWASP Top 10:2021](https://owasp.org/Top10/)

---

## CWE - Common Weakness Enumeration

The list of CWEs is a community-developed list of common software and hardware
weakness types that have security ramifications. (First released in 2006.)
“Weaknesses” are flaws, faults, bugs, or other errors in software or hardware
implementation, code, design, or architecture that if left unaddressed could
result in systems, networks, or hardware being vulnerable to attack. The CWE
List and associated classification taxonomy serve as a language that can be
used to identify and describe these weaknesses in terms of CWEs.

Targeted at both the development and security practitioner communities, the
main goal of CWE is to educate software and hardware architects, designers,
programmers, etc. on how to eliminate the most common mistakes as early in the
Software Development Life Cycle (SDLC) as possible. Ultimately, use of CWE
helps prevent the kinds of security vulnerabilities that have plagued the
software and hardware industries and place enterprises at risk. This, in
return, helps save money in the long run as well as reduce liability that
occurs through these flaws.

## CVE - Common Vulnerabilities and Exposures

The CVE list is a list of publicly disclosed computer security flaws. When
someone refers to a CVE, they mean a security flaw that's been assigned
a CVE ID number. Security advisories issued by vendors and researchers almost
always mention at least one CVE ID. CVEs help IT professionals coordinate
their efforts to prioritize and address these vulnerabilities to make computer
systems more secure.

The CVE program is overseen by the [MITRE corporation](https://cve.mitre.org/)
with funding from the Cybersecurity and Infrastructure Security Agency (CISA),
part of the U.S. Department of Homeland Security.

## CWE vs. CVE

CWE has to do with the vulnerability not the instance within a product or
system. In general language, CWE labels the weakness that creates
vulnerabilities within the system. CWE is a formal list of common software
weaknesses that can occur in software architecture, design, code or
implementation that can lead to exploitable security vulnerabilities.

CWE was created to serve as a common language for describing software security
weaknesses; serve as a standard measuring stick for software security tools
targeting these weaknesses; and to provide a common baseline standard for
weakness identification, mitigation, and prevention efforts. Examples of CWE
are buffer overflow, format strings, flaws, faults, and bugs.

CVE has to do with the specific instance within a product or system –
not the underlying flaws. 

- **CWE** - [200](https://cwe.mitre.org/data/definitions/200.html):
Exposure of Sensitive Information to an Unauthorized Actor
- **CVE** - [2021-20228](https://www.opencve.io/cve/CVE-2021-20228):
A flaw was found in the Ansible Engine 2.9.18, where sensitive info is not
masked by default and is not protected by the no_log feature when using the
sub-option feature of the basic.py module. This flaw allows an attacker to
obtain sensitive information. The highest threat from this vulnerability is to
confidentiality. 
