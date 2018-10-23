docker ps -aq -f status=exited
result = $( docker ps -aq -f status=exited )

if [ "$result" == " " ]; then 
  echo "No containers to remove"
else
docker rm $(docker ps --all -q -f status=exited)

  fi


