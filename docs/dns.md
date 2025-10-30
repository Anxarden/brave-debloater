# DNS Configuration Guide

This guide explains how Brave handles DNS over HTTPS (DoH) and how to change the provider if you don’t want to use the default AdGuard DNS setup from `brave-debloater.reg`.
> **Note:** Once Brave is managed by policy, DNS settings in the UI will be locked and cannot be changed manually.
---

## 🧠 What Is Secure DNS (DoH)?

Secure DNS (DNS over HTTPS) encrypts your DNS requests so your ISP or network can't see what websites you visit.  
Brave supports enforcing this setting through **Group Policy (Registry)** or **policies.json**.

Once managed by policy, DNS settings in `brave://settings/security` become read-only.

---

## ⚙️ Current Default (from brave-debloater.reg)

```
DnsOverHttpsMode = "secure"
DnsOverHttpsTemplates = "https://dns.adguard-dns.com/dns-query"
```

AdGuard DNS blocks ads, trackers, and phishing domains by default.

---

## 🌐 Popular DNS over HTTPS Providers

| Provider | Description | DoH URL |
|-----------|--------------|---------|
| **AdGuard DNS** | Blocks ads, trackers, and malicious sites | `https://dns.adguard-dns.com/dns-query` |
| **Cloudflare** | Fast, privacy-first (no blocking) | `https://cloudflare-dns.com/dns-query` |
| **Quad9** | Privacy-focused, malware protection | `https://dns.quad9.net/dns-query` |
| **Google DNS** | Reliable, but not privacy-first | `https://dns.google/dns-query` |
| **NextDNS** | Customizable privacy, logging, and blocking | `https://dns.nextdns.io/<YOUR-ID>` |
| **OpenDNS (Cisco)** | FamilyShield & filtering options | `https://doh.opendns.com/dns-query` |

---

## 🛠️ How to Change Provider

To switch providers:

1. Open the `brave-debloater.reg` file in a text editor.  
2. Replace the line: `"DnsOverHttpsTemplates"="https://dns.adguard-dns.com/dns-query"`
   with your preferred DoH URL from the list above.  
3. Save and re-import the `.reg` file (double-click it again).  
4. Restart Brave.  
5. Verify the change in: `brave://policy`

---

## 💡 Tips

- Setting `"DnsOverHttpsMode"="automatic"` allows Brave to use the user’s system DNS if DoH fails.  
- Some public DNS providers offer **IPv6** or **regional** endpoints — you can substitute them as needed.
  
---

**Last updated:** October 2025  
**Maintainer:** [@anxarden](https://github.com/anxarden)
