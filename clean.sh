echo "-------$(date +'%X %x')---------"

ids=(`docker ps -q`)

if [ "${#ids[@]}" -gt 10 ]; then
  docker system prune -f --all --volumes
else
  echo nope!
fi

echo ---------------------------------
echo
