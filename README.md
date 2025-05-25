# gensynguide

curl -sSL https://raw.githubusercontent.com/zunxbt/installation/main/node.sh | bash

sudo apt update && sudo apt install -y python3 python3-venv python3-pip curl screen git yarn && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && sudo apt update && sudo apt install -y yarn

wget https://github.com/gensyn-ai/rl-swarm/archive/refs/tags/v0.4.2.tar.gz

tar -xvzf v0.4.2.tar.gz

cd rl-swarm-0.4.2

nano hivemind_exp/configs/mac/grpo-qwen-2.5-0.5b-deepseek-r1.yaml

useEffect(() => {
  if (!user && !signerStatus.isInitializing) {
    openAuthModal();
  }
}, [user, signerStatus.isInitializing]);

sudo npm install -g localtunnel

screen -S swarm 

python3 -m venv .venv && source .venv/bin/activate && ./run_rl_swarm.sh

1️⃣ How to Login or access http://localhost:3000/ in VPS? 📶
Open a new Terminal and login ur vps

Allow Incoming connection on VPS

sudo apt install ufw -y
sudo ufw allow 22
sudo ufw allow 3000/tcp
Enable ufw
sudo ufw enable
Install cloudflared on the VPS
wget -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
sudo dpkg -i cloudflared-linux-amd64.deb
Check version
cloudflared --version
Make sure your Node is running on port 3000 in Previous Screen

Run the tunnel command

cloudflared tunnel --url http://localhost:3000
Access the Link from your local machine


