echo "Initiating replica set"
until mongosh --host "$HOSTNAME" --port 27017 --eval "rs.initiate({ _id: 'rs0', members: [{ _id:0, host: '$HOSTNAME:27017'}]})"
do
    sleep 2
done
echo "Replica set initiated"