docker ps -aq -f status=exited
RESULT = "$( docker ps -aq -f status=exited )"

if [ "$RESULT" == " " ]; then 
  echo "No containers to remove"
else
docker rm $(docker ps --all -q -f status=exited)

  fi


