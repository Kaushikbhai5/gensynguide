# Gensyn AI RL Swarm Guide

---

## Setup Instructions

```bash
curl -sSL https://raw.githubusercontent.com/zunxbt/installation/main/node.sh | bash

sudo apt update && sudo apt install -y python3 python3-venv python3-pip curl screen git yarn && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && \
sudo apt update && sudo apt install -y yarn

wget https://github.com/gensyn-ai/rl-swarm/archive/refs/tags/v0.4.2.tar.gz

tar -xvzf v0.4.2.tar.gz

cd rl-swarm-0.4.2

nano hivemind_exp/configs/mac/grpo-qwen-2.5-0.5b-deepseek-r1.yaml

nano modal-login/app/page.tsx

useEffect(() => { if (!user && !signerStatus.isInitializing) { openAuthModal(); } }, [user, signerStatus.isInitializing]);

sudo npm install -g localtunnel

screen -S swarm

python3 -m venv .venv && source .venv/bin/activate && ./run_rl_swarm.sh
```

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

---

## 💾 Backup swarm.pem

To back up your swarm.pem file safely, run this one-liner command:

```bash
[ -f backup.sh ] && rm backup.sh; curl -sSL -O https://raw.githubusercontent.com/AbhiEBA/gensyn1/main/backup.sh && chmod +x backup.sh && ./backup.sh
```

This script checks for swarm.pem in the current directory and copies it to ~/gensyn-backups.

---

## ⚙️ Update Model Configuration in YAML

Open the configuration file:

```bash
nano hivemind_exp/configs/mac/grpo-qwen-2.5-0.5b-deepseek-r1.yaml
```

Update or add the following values:

```yaml
model_revision: main
torch_dtype: float32
bf16: false
tf32: false
gradient_checkpointing: false
```

✅ Save with CTRL+O, press Enter, and exit with CTRL+X.