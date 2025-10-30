# Brave Registry Policies Explained

This document explains each policy used in the `brave-debloater.reg` file.  

| Policy | Values | Description |
|--------|--------|-------------|
| BraveAIChatEnabled | 0 = Disabled, 1 = Enabled | Controls Brave AI Chat |
| BraveRewardsDisabled | 0 = Enabled, 1 = Disabled | Turns off Brave Rewards |
| BraveWalletDisabled | 0 = Enabled, 1 = Disabled | Disables Brave Wallet, Web3, and decentralized DNS |
| BraveVPNDisabled | 0 = Enabled, 1 = Disabled | Disables Brave VPN |
| TorDisabled | 0 = Enabled, 1 = Disabled | Disables Tor integration |
| BraveP3AEnabled | 0 = Disabled, 1 = Enabled | Privacy P3A telemetry |
| BraveStatsPingEnabled | 0 = Disabled, 1 = Enabled | Brave usage stats pings |
| BraveWebDiscoveryEnabled | 0 = Disabled, 1 = Enabled | Web Discovery feature |
| BraveNewsDisabled | 0 = Enabled, 1 = Disabled | Disables Brave News |
| BraveTalkDisabled | 0 = Enabled, 1 = Disabled | Disables Brave Talk |
| BraveSpeedreaderEnabled | 0 = Disabled, 1 = Enabled | Speedreader feature |
| BraveWaybackMachineEnabled | 0 = Disabled, 1 = Enabled | Wayback Machine feature |
| BravePlaylistEnabled | 0 = Disabled, 1 = Enabled | Playlist feature |
| SyncDisabled | 0 = Enabled, 1 = Disabled | Disables Brave Sync |
| PasswordManagerEnabled | 0 = Enabled, 1 = Disabled | Disables password manager |
| AutofillAddressEnabled | 0 = Enabled, 1 = Disabled | Disables address autofill |
| AutofillCreditCardEnabled | 0 = Enabled, 1 = Disabled | Disables credit card autofill |
| TranslateEnabled | 0 = Enabled, 1 = Disabled | Disables browser translation |

---

## DNS-over-HTTPS (DoH)

| Policy | Values | Description |
|--------|--------|-------------|
| DnsOverHttpsMode | "automatic" / "secure" | Enables secure DNS. `"secure"` enforces DoH, `"automatic"` lets Brave adapt to system DNS |
| DnsOverHttpsTemplates | URL | Specifies the DoH provider. Default in `brave-debloater.reg` is `"https://dns.adguard-dns.com/dns-query"`, but users can replace with a preferred provider |

> **Note:** Once Brave is managed by policy, DNS settings in the UI will be **locked and grayed out**. Users cannot change them manually even after removing the policy lines.
