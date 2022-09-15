# A10 - Server-Side Request Forgery (SSRF)

## Introduction and background

SSRF flaws occur whenever a web application is fetching a remote resource
without validating the user-supplied URL. It allows an attacker to coerce the
application to send a crafted request to an unexpected destination, even when
protected by a firewall, VPN, or another type of network access control list (ACL).

In web applications, fetching a URL is a common scenario. As a result,
the incidence of SSRF is increasing. Also, the severity of SSRF is becoming
higher due to cloud services and the complexity of architectures.

## CWEs

- [CWE-918:](https://cwe.mitre.org/data/definitions/918.html)
Server-Side Request Forgery (SSRF)

## CVEs

- [CWE-918](https://www.opencve.io/cve?cwe=CWE-918)

## Examples of attacker scenarios using juice shop

- `Server-side XSS Protection` - Perform a persisted XSS attack with `<iframe src="javascript:alert(`xss`)">` bypassing a server-side security mechanism. 
- **DOM XSS** - Perform a _DOM_ XSS attack with &lt;iframe src="javascript:alert(\`xss\`)">
  - **Client-side XSS Protection (XSS)** - Perform a _persisted_ XSS attack with &lt;iframe src="javascript:alert(\`xss\`)"> bypassing a client-side security mechanism
    - Hint: Register a user - Resend feature in Firefox
    - /#/administration portal from previous challenge list all users

## Example attack scenarios

- `Port scan internal servers` – If the network architecture is unsegmented, attackers can map out internal networks and determine if ports are open or closed on internal servers from connection results or elapsed time to connect or reject SSRF payload connections.
- `Sensitive data exposure` – Attackers can access local files or internal services to gain sensitive information such as `file:///etc/passwd</span>` and `http://localhost:28017/.`
- `Access metadata storage of cloud services` – Most cloud providers have metadata storage such as `http://169.254.169.254/.` An attacker can read the metadata to gain sensitive information.
- `Compromise internal services` – The attacker can abuse internal services to conduct further attacks such as Remote Code Execution (RCE) or Denial of Service (DoS).

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

More info in OWASP's cheat sheets

- [OWASP - Server-Side Request Forgery Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Server_Side_Request_Forgery_Prevention_Cheat_Sheet.html)
- [SSRF bible](https://cheatsheetseries.owasp.org/assets/Server_Side_Request_Forgery_Prevention_Cheat_Sheet_SSRF_Bible.pdf)
