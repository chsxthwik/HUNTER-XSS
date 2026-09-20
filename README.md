# XSS

Payload wordlist, checklist, and **Quantum-XSS** — a Bash workflow for reflected and blind XSS hunting.

## Quantum-XSS

Automates URL collection (Wayback, gau), gf filtering, and Dalfox scanning. Optional blind XSS callback URL.

### Requirements

- [waybackurls](https://github.com/tomnomnom/waybackurls)
- [gau](https://github.com/lc/gau)
- [gf](https://github.com/tomnomnom/gf)
- [dalfox](https://github.com/hahwul/dalfox)

### Install

```bash
git clone https://github.com/chsxthwik/XSS.git
cd XSS/Quantum-XSS
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
| `-d` | Target domain (required) |
| `-b` | Blind XSS callback URL |
| `-o` | Output file |
| `-h` | Help |
| `-v` | Version |

## Files

| File | Description |
|------|-------------|
| `xss.txt` | Payload list |
| `XSS-Checklist.html` | Testing checklist |
| `Quantum-XSS/` | Automation script |
