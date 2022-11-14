echo "How many clients do you want to run?"
read numClients

echo "Running $numClients clients..."

for ((i=1; i<=$numClients; i++))
do
    echo "Running client $i..."
    java -cp build/libs/Scalable-Server-Design-1.0-SNAPSHOT.jar cs455.scaling.client.Client localhost 7000 8 &
done