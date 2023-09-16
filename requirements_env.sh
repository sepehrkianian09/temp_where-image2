# install python 2.7
# https://linux.how2shout.com/how-to-install-python-2-7-on-ubuntu-20-04-lts/#1_Open_a_command_terminal
sudo apt update
sudo apt install python2-minimal
python2 -V
ls /usr/bin/python*
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 2
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1
echo "python command example"
python -V
sudo apt install curl 
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py
pip2 --version

# install venv
# https://tecadmin.net/use-virtualenv-with-python2/
pip2 install virtualenv
virtualenv -p $(which python) .venv
source .venv/bin/activate

# install java
sudo apt install openjdk-8-jdk
java -version

# install dependencies
sudo apt-get install python-dev
sudo apt-get install -y python-tk

# clone first
git clone git@github.com:tylin/coco-caption.git tools
./tools/coco-caption-master/get_stanford_models.sh
