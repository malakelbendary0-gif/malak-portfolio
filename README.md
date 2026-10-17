# Malak Emad Elbendary — Cybersecurity & Web Development Portfolio

> **High-end, responsive personal portfolio website with a modern dark cybersecurity vibe (deep slate/blue background, neon cyan & green accents).**

Designed and built for **Malak Emad Elbendary**, Computer Science student at the Faculty of Computers & Artificial Intelligence, specializing in Penetration Testing, Cisco Enterprise Network Infrastructure, and Modern Web Engineering.

---

## ⚡ Quick Start Options

### Option 1: Instant Launch (Zero Installation Required!)
You don't need Node.js or any build tools to run and view this portfolio right now!

- **Method A (One-Click Windows Launcher)**:
  Double-click `start-preview.bat` in this folder. It will boot up a local server and automatically open the website in your default browser at `http://localhost:3000/`.

- **Method B (Direct Browser Open)**:
  Simply double-click `index.html` to open it in Chrome, Edge, Brave, or Firefox. The standalone application runs React 18, Tailwind CSS, and Lucide Icons directly via browser CDNs.

---

### Option 2: Modern Node / Vite Development
If you have or install Node.js (v18+) and want to develop with hot module reloading or deploy via Git:

```bash
# Install dependencies
npm install

# Start local development server
npm run dev

# Build optimized production bundle
npm run build

# Preview production build locally
npm run preview
```

---

## 🛡️ Key Portfolio Sections & Features

1. **Top Cyber Ribbon & Security Status Bar**:
   - Live encryption status indicator (`TLS_AES_256_GCM_SHA384`, `OWASP & Cisco Aligned`).
   - Quick "Preview CV" shortcut button.

2. **Hero Section**:
   - Name: **Malak Emad Elbendary**
   - Title: **Cybersecurity & Network Engineer | Front-End Developer**
   - Profile avatar with **multi-layered glowing neon cyan and green border rings** with cyber corner brackets and status ping badge.
   - Live **Interactive Security Console / Terminal**: Try typing `help`, `whoami`, `skills`, `trainings`, `projects`, `certs`, `cv`, or `contact`!
   - Action buttons: "Download Resume (CV)", "Explore Projects", "Contact Me".

3. **About Section**:
   - Comprehensive bio highlighting hands-on technical training from leading national initiatives (NTI, NextGen).
   - 3 Core Competency Pillars: Penetration Testing, Cisco Networking, and Front-End Engineering.
   - Academic background banner: Faculty of Computers & AI, Bachelor of Science in Computer Science.

4. **Trainings & Certifications**:
   - **Cybersecurity Summer Training — NTI**: Hands-on labs in penetration testing, vulnerability assessment (XSS, SQL Injection), and security auditing.
   - **Network Infrastructure & Cisco CCNA — NTI**: Practical configuration of enterprise topologies, VLANs, routing protocols, and network security.
   - **Web Development Track — NextGen Initiative**: Core training in HTML, CSS, and JavaScript.
   - **React Frontend Development — Self-Learned**: Modern, component-based user interfaces.

5. **Technical & Soft Skills Matrix**:
   - Interactive category filter tabs: *All Domains*, *Cybersecurity & Auditing*, *Networking & Infrastructure*, *Web Development*, *Soft Skills*.
   - Includes full tools matrix: Burp Suite, Metasploit, Nmap, Kali Linux, DVWA, Cisco Packet Tracer, OSPF, VLANs, ACLs, React.js, Tailwind CSS, etc.

6. **Featured Project Dossiers with Interactive Modals**:
   - **DVWA Web Vulnerability Assessment**: Detailed POC testing for Reflected, Stored, and DOM XSS and SQLi with remediation patches.
   - **Multi-Switch Enterprise Network Architecture**: Multi-tier Cisco topology with VLANs, OSPF, EtherChannel, and ACL rules.
   - **Metasploitable Penetration Testing Audit**: Security scanning and reconnaissance using Nmap and Metasploit.
   - Each modal features an Executive Summary, Deliverables, Tools, and CLI code/configuration extract.

7. **Campus & Profile Photo Gallery**:
   - High-resolution curated showcase of Malak's professional and campus photos with interactive lightbox zoom.

8. **Contact & Resume Channels**:
   - Direct encrypted message transmission form.
   - Quick one-click copy for email (`malak.elbendary.sec@gmail.com`).
   - Direct link to verified LinkedIn profile (`https://www.linkedin.com/in/malak-emad-elbendary`).

9. **Interactive ATS-Ready CV Modal**:
   - Complete formatted resume view with instant one-click **Print / Save as PDF** functionality.

---

## 📁 Project Directory Layout

```
malak-portfolio/
├── index.html              # Standalone zero-build React 18 + Tailwind + Lucide portfolio
├── server.ps1              # Native PowerShell local web server
├── start-preview.bat       # One-click Windows desktop launcher
├── package.json            # Vite + React build configuration
├── vite.config.js          # Vite bundler configuration
├── tailwind.config.js      # Tailwind theme configuration (cyber colors & neon glow)
├── postcss.config.js       # PostCSS config
├── README.md               # Complete project documentation
├── assets/                 # Web assets & profile images
│   ├── favicon.svg         # Neon shield ME logo
│   ├── profile1.jpg        # Formal black blazer headshot (Hero Avatar)
│   ├── profile3.jpg        # Campus technology lab photo (About section)
│   └── profile4.jpg        # Creative dynamic portrait (Gallery)
└── src/                    # Modular React source code
    ├── assets/             # Bundled image assets
    ├── components/
    │   ├── Navbar.jsx
    │   ├── Hero.jsx
    │   ├── About.jsx
    │   ├── Trainings.jsx
    │   ├── Skills.jsx
    │   ├── Projects.jsx
    │   ├── ProjectModal.jsx
    │   ├── Gallery.jsx
    │   ├── Contact.jsx
    │   ├── Footer.jsx
    │   └── CvModal.jsx
    ├── App.jsx
    ├── main.jsx
    └── index.css
```

---

## 🚀 How to Deploy

### Deploy to GitHub Pages (Free)
1. Initialize a git repo and push to GitHub:
   ```bash
   git init
   git add .
   git commit -m "Initial commit of Malak's cybersecurity portfolio"
   git remote add origin https://github.com/malak-elbendary/portfolio.git
   git branch -M main
   git push -u origin main
   ```
2. In your GitHub repository settings, go to **Settings > Pages > Build and deployment > Source**, and select **GitHub Actions** or **Deploy from a branch (`main` / root)**.
3. Because `index.html` is at the root and fully self-contained, GitHub Pages will host it instantly with zero configuration!

### Deploy to Vercel or Netlify
- Drag and drop the `malak-portfolio` folder directly into the **Vercel** or **Netlify** dashboard.
- It will go live in seconds!
