cd /workspaces/Fabric_school_material/test-network

echo -e "\nShutting down the network\n\n"
echo "y y y" | ./network.sh down

echo -e "\nStarting the network and the channel\n\n"
./network.sh up createChannel

echo -e "\nDeploying the chaincode\n\n"
./network.sh deployCC -ccn carRegistration