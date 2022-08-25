# A10 - Server-Side Request Forgery (SSRF)

## Introduction and background

SSRF flaws occur whenever a web application is fetching a remote resource
without validating the user-supplied URL. It allows an attacker to coerce the
application to send a crafted request to an unexpected destination, even when
protected by a firewall, VPN, or another type of network access control list (ACL).

In web applications, fetching a URL is a common scenario. As a result,
the incidence of SSRF is increasing. Also, the severity of SSRF is becoming
higher due to cloud services and the complexity of architectures.

### CWEs

- [CWE-918:](https://cwe.mitre.org/data/definitions/918.html)
Server-Side Request Forgery (SSRF)

## CVEs

- [CWE-918](https://www.opencve.io/cve?cwe=CWE-918)

## Examples of attacker scenarios using juice shop

- `Server-side XSS Protection` - Perform a persisted XSS attack with `<iframe src="javascript:alert(`xss`)">` bypassing a server-side security mechanism. This challenge is not available on Docker!

## Primary defenses

Possible defenses developers can implement to prevent SSRF :

- From Network layer.
    - Segment remote resource access functionality in separate networks to reduce the impact of SSRF
    - Enforce “deny by default” firewall policies or network access control rules to block all but essential intranet traffic.
- From Application layer:
    - Sanitize and validate all client-supplied input data
    - Enforce the URL schema, port, and destination with a positive allow list
    - Do not send raw responses to clients
- Disable HTTP redirections
    - Be aware of the URL consistency to avoid attacks such as DNS rebinding and “time of check, time of use” (TOCTOU) race conditions
    - Do not mitigate SSRF via the use of a deny list or regular expression. Attackers have payload lists, tools, and skills to bypass deny lists.
- Additional Measures to consider:
    - Don't deploy other security relevant services on front systems (e.g. OpenID). Control local traffic on these systems (e.g. localhost)
    - For frontends with dedicated and manageable user groups use network encryption (e.g. VPNs) on independent systems to consider very high protection needs

[More info in OWASP's XXXXX cheat sheet]()
