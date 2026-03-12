## 🦁 Brave Debloater

**A single Windows Registry script and Linux JSON file to safely debloat [Brave Browser](https://brave.com/).**  

This project disables **Brave AI, Rewards, Wallet, VPN, Telemetry, News, Talk, Speedreader, Playlist**, and other non-essential features, giving you a **cleaner, faster, and more privacy-focused browsing experience**.  

> **Note:** Sync setting is **left untouched** so you can continue using sync preferences or disable it yourself.  
> **Note:** Secure DNS is enforced, but you can choose your preferred DNS provider.

### ✨ Features
- 🚫 Disable Brave AI (Chat, Leo, Summarizer)  
- 💰 Turn off Rewards, Wallet, VPN, and Tor  
- 📊 Disable Telemetry (P3A, Stats Ping, Web Discovery)  
- 📰 Remove News, Talk, Speedreader, Playlist, and Wayback Machine  
- 🔒 Disable Autofill, Password Manager, and Translation  
- 🌐 Enforce secure DNS (customizable DoH provider)  
- 🛡️ Leave Shields and Sync untouched  

---

### 🪟 Usage – Windows

1. Download the `brave-debloater.reg` file from the repo root.  
2. **Double-click** the file to import it into the Windows registry.  
3. **Restart Brave** (or Brave Portable) to apply the changes.  
4. Verify applied policies by visiting: `brave://policy/`

### 🐧 Usage – Linux
#### Automated:
Paste the following in your terminal, and Brave will be debloated automatically: <br>
`$ curl -sfl https://raw.githubusercontent.com/AbdullahAlKhafajiDev/brave-debloater/refs/heads/main/brave-debloater-script.sh | bash -`

#### Manual: 
1. Download the `policies.json` file from the repo root. 
2. Create the managed policies directory (if it doesn't exist):
   `sudo mkdir -p /etc/brave/policies/managed/`
3. Copy `policies.json` into the directory:
   `sudo cp policies.json /etc/brave/policies/managed/`
4. Restart Brave to apply the changes.
5. Verify applied policies by visiting: `brave://policy/`
> **Note:** The JSON file can be used **as-is**; no renaming is required. Secure DNS is enforced by default, but you can choose a different provider.

---

### 📜 Policies

For a detailed explanation of each policy used in this script, see [Policies.md](docs/policies.md).

### 🌍 DNS over HTTPS

For more information about DNS-over-HTTPS, changing providers, and popular options, see [DNS.md](docs/dns.md).

### 🔗 References

- [Brave Official Group Policy Documentation](https://support.brave.com/hc/en-us/articles/360039248271-Group-Policy)

---

## ⚖️ License

This project is licensed under the [MIT License](LICENSE).
