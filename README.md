# Brave Debloater

**A single Windows Registry script to safely debloat [Brave Browser](https://brave.com/).**  

This script disables **Brave AI, Rewards, Wallet, VPN, Telemetry, News, Talk, Speedreader, Playlist**, and other non-essential features, giving you a **cleaner, faster, and more privacy-focused browsing experience**.  

> **Note:** Sync setting is **left untouched** so you can continue using sync preferences or disable it yourself.  
> **Note:** Secure DNS is enforced, but you can choose your preferred DNS provider.
> 
---

## Features

- Disable Brave AI (Chat, Leo, Summarizer)  
- Turn off Rewards, Wallet, and VPN  
- Disable Telemetry (P3A, Stats Ping, Web Discovery)  
- Remove News, Talk, Speedreader, Playlist, Wayback Machine  
- Enforce secure DNS via AdGuard (or your preferred DNS)  
- Leave Shields and Sync untouched  

---

## Usage

1. Download the `brave-debloater.reg` file from the repo root.  
2. **Double-click** the file to import it into the Windows registry.  
3. **Restart Brave** (or Brave Portable) to apply the changes.  
4. Verify applied policies by visiting: `brave://policy/`

---

## Policies

For a detailed explanation of each policy used in this script, see [Policies.md](docs/policies.md).

---

## DNS over HTTPS

For more information about DNS-over-HTTPS, changing providers, and popular options, see [DNS.md](docs/dns.md).

---

## References

- [Brave Official Group Policy Documentation](https://support.brave.com/hc/en-us/articles/360039248271-Group-Policy)

---

## License

This project is licensed under the [MIT License](LICENSE).
