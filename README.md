# HUNTER-XSS

[![License: MIT](https://img.shields.io/badge/license-MIT-00FF9F.svg)](LICENSE)
[![CI](https://github.com/chsxthwik/HUNTER-XSS/actions/workflows/ci.yml/badge.svg)](https://github.com/chsxthwik/HUNTER-XSS/actions/workflows/ci.yml)
[![Shell](https://img.shields.io/badge/shell-bash-informational.svg)](Quantum-XSS/XSS.sh)

XSS testing kit: a 2,600+ line payload list, an interactive
testing checklist, and **Quantum-XSS**, a Bash workflow that automates URL
discovery and scanning for reflected XSS.

> Use only against targets you own or are authorized to test. See
> [SECURITY.md](SECURITY.md).

## Contents

| File | Description |
|------|-------------|
| `xss.txt` | 2,663 unique XSS payloads: filter bypasses, polyglots, encodings, and event-handler tricks |
| `XSS-Checklist.html` | An interactive mind-map checklist of techniques, filter evasion and firewall bypass. Open it in a browser. |
| `Quantum-XSS/XSS.sh` | Automation script: collects URLs, filters likely-reflected params, and scans with Dalfox |

## Quantum-XSS

Pulls historical and live URLs for a domain (Wayback Machine + gau), narrows
them to likely XSS sinks with `gf`, then scans with Dalfox. Supports an
optional blind-XSS callback.

### Requirements

- [waybackurls](https://github.com/tomnomnom/waybackurls)
- [gau](https://github.com/lc/gau)
- [gf](https://github.com/tomnomnom/gf) with the `xss` pattern installed
- [dalfox](https://github.com/hahwul/dalfox)

### Install

```bash
git clone https://github.com/chsxthwik/HUNTER-XSS.git
cd HUNTER-XSS/Quantum-XSS
chmod +x XSS.sh
```

### Usage

```bash
./XSS.sh -d target.example
./XSS.sh -d target.example -b https://your-callback.xss.ht
./XSS.sh -d target.example -o results.txt
```

| Flag | Description |
|------|-------------|
| `-d`, `--domain` | Target domain (required) |
| `-b`, `--blind` | Blind XSS callback URL |
| `-o`, `--output` | Output file (default `results.txt`) |
| `-h`, `--help` | Show usage |
| `-v`, `--version` | Print script version |

Results are written under `results/<domain>/`.

## Checking the payload list

```bash
bash scripts/check-payloads.sh
```

Verifies `xss.txt` has no blank or duplicate lines. This runs in CI on every push.

## License

MIT, see [LICENSE](LICENSE).
