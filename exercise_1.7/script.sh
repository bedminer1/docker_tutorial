while true
do
    echo "Input webstie:"
    read website; echo "Searching.."
    sleep 1; curl http://$website
done