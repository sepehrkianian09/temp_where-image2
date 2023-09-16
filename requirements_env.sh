# install python 2.7
# https://linux.how2shout.com/how-to-install-python-2-7-on-ubuntu-20-04-lts/#1_Open_a_command_terminal
apt update

apt install -y python2-minimal
python2 -V
ls /usr/bin/python*
update-alternatives --install /usr/bin/python python /usr/bin/python2 2
update-alternatives --install /usr/bin/python python /usr/bin/python3 1
echo "python command example"
python -V
apt install -y curl 
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
python2 get-pip.py
pip2 --version

# install venv
# https://tecadmin.net/use-virtualenv-with-python2/
pip2 install virtualenv
virtualenv -p $(which python) .venv
source .venv/bin/activate

# install java
apt install -y openjdk-8-jdk
java -version

# install dependencies
apt-get install -y python-dev
apt-get install -y python-tk

# clone first
apt install -y git
git clone https://github.com/tylin/coco-caption.git tools/coco-caption-master
./tools/coco-caption/get_stanford_models.sh