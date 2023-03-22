#shell script to prepare ubuntu 20.04 to host a pythonwebapp

sudo apt update -y
sudo apt install git -y
git clone https://github.com/joeting19/PythonBlogApp.git
cd PythonBlogApp
sudo apt install python3.8-venv -y

#run the following as root if using prod server, otherwise will run into permission issues
python3 -m venv venv
source venv/bin/activate
python3 -m pip install -r requirements.txt
python3 main.py

#tmux, start processm ctrl+b and then d to exitpy



#check ports
netstat -tulpn

#kill python processes
kill -9 $(ps -A | grep python | awk '{print $1}')
