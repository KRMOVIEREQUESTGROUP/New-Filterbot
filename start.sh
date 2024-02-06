if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/KRMOVIEREQUESTGROUP/New-Filterbot.git /New-Filterbot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /New-Filterbot
fi
cd /TG_BOTZ 
pip3 install -U -r requirements.txt
echo "Starting New-Filterbot 😎...."
python3 bot.py    
