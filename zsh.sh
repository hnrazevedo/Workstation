sudo apt-get install zsh -y

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/' .zshrc

git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd .. && rm -rf fonts

# Zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# K
git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k

# fzf 
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting k)/' ~/.zshrc

chsh -s $(which zsh)

source .zshrc
