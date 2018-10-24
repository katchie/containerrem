RESULT=$(docker ps -aq -f status=exited)

if [ -z "$RESULT" -o "$RESULT" == " " ]; then 
  echo "No containers to remove"
else
  docker rm $RESULT
fi
