# 🚀 Gensyn AI RL Swarm Setup Guide

This guide walks you through the installation and execution of Gensyn's RL Swarm (v0.4.2) step-by-step.

---

## 🧩 Prerequisites

- Ubuntu/Debian-based system
- sudo privileges
- Python 3 installed

---

## ⚙️ Installation & Setup

### 1. Run Gensyn Node Installation Script

```bash
curl -sSL https://raw.githubusercontent.com/zunxbt/installation/main/node.sh | bash
```

---

### 2. Install Required Packages

```bash
sudo apt update && sudo apt install -y python3 python3-venv python3-pip curl screen git yarn && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && sudo apt update && sudo apt install -y yarn
```

---

### 3. Download Gensyn RL Swarm v0.4.2

```bash
wget https://github.com/gensyn-ai/rl-swarm/archive/refs/tags/v0.4.2.tar.gz
```

---

### 4. Extract Files

```bash
tar -xvzf v0.4.2.tar.gz
```

---

### 5. Navigate to Directory

```bash
cd rl-swarm-0.4.2
```

---

### 6. Edit the Configuration File

```bash
nano hivemind_exp/configs/mac/grpo-qwen-2.5-0.5b-deepseek-r1.yaml
```

---

### 7. Edit the Frontend Page File

```bash
nano modal-login/app/page.tsx
```

Paste this inside `useEffect`:
```tsx
useEffect(() => {
  if (!user && !signerStatus.isInitializing) {
    openAuthModal();
  }
}, [user, signerStatus.isInitializing]);
```

---

### 8. Install LocalTunnel Globally

```bash
sudo npm install -g localtunnel
```

---

### 9. Start a Screen Session

```bash
screen -S swarm
```

---

### 10. Set Up Python Environment & Run

```bash
python3 -m venv .venv && source .venv/bin/activate && ./run_rl_swarm.sh
```

---

## 🧠 Credits

- [Gensyn AI GitHub](https://github.com/gensyn-ai/rl-swarm)

---

## 📜 License

MIT License
---

## 1️⃣ How to Login or Access http://localhost:3000/ in VPS? 📶

### 🔐 Open a New Terminal and Login to Your VPS

---

### 🔓 Allow Incoming Connections on VPS

```bash
sudo apt install ufw -y
sudo ufw allow 22
sudo ufw allow 3000/tcp
```

---

### ✅ Enable UFW Firewall

```bash
sudo ufw enable
```

---

### 🌐 Install cloudflared on the VPS

```bash
wget -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
sudo dpkg -i cloudflared-linux-amd64.deb
```

Check version:

```bash
cloudflared --version
```

---

### 🚀 Make Sure Your Node is Running on Port 3000 in Previous Screen

---

### 🔁 Run the Tunnel Command

```bash
cloudflared tunnel --url http://localhost:3000
```

---

### 🖥️ Access the Link from Your Local Machine
