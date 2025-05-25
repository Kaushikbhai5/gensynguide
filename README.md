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
