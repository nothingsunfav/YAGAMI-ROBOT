if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/nothingsunfav/YAGAMI-ROBOT.git /YAGAMI-ROBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /YAGAMI-ROBOT
fi
cd /YAGAMI-ROBOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
