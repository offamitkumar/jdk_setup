GIT_VERSION="$(git --version)"
if [ "$GIT_VERSION" != "command not found" ]; then
    echo "git is present on the system"
else
    echo "git is missing; installing git"
    sudo apt install git
fi

echo "want to generate SSH Key for github ? (Y/N): " 
read generate_shh_key 
if [[ $generate_shh_key == "Y" || $generate_shh_key == "y" ]]; then
	ssh-keygen -t ed25519 -C "amitlocham09@icloud.com"
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_ed25519
	cat ~/.ssh/id_ed25519.pub
	echo "copy and paste above content in your Github->settings->add ssh field"
	echo "Done ? press any key"
	read finished 
else
    echo "skipping ssh key generation"	
fi

# personal clone
# git clone git@github.com:offamitkumar/jdk.git
# git clone git@github.com:offamitkumar/jdk_setup.git

# cd jdk_setup

if [ -f $HOME/.vimrc ] || [ -L $HOME/.vimrc ]
then
    echo "Moving currect .vimrc file to .vimrc_old"
    mv $HOME/.vimrc $HOME/.vimrc_old
fi
ln -s "$(pwd)/.vimrc" $HOME/.vimrc

if [ -f $HOME/.bashrc ] || [ -L $HOME/.bashrc ]
then
    echo "Moving currect .bashrc file to .bashrc_old"
    mv $HOME/.bashrc $HOME/.bashrc_old
fi
ln -s "$(pwd)/.bashrc" $HOME/.bashrc
source $HOME/.bashrc

if [ -f $HOME/.tmux.conf ] || [ -L $HOME/.tmux.conf ]
then
    echo "Moving currect .tmux.conf file to .tmux.conf_old"
    mv $HOME/.tmux.conf $HOME/.tmux.conf.old
fi
ln -s "$(pwd)/.tmux.conf" $HOME/.tmux.conf
cp conf.sh $HOME
cd ..



## community testing
#mkdir community_testing
#cd community_testing
#git clone https://github.com/openjdk/jdk.git
#cd ..
#
##daily testing
#mkdir daily_testing
#cd daily_testing
#git clone https://github.com/openjdk/jdk.git
#cd ..


sudo apt-get install autoconf make unzip zip gcc g++ libasound2-dev libcups2-dev libfontconfig1-dev libx11-dev libxext-dev libxrender-dev libxrandr-dev libxtst-dev libxt-dev -y
