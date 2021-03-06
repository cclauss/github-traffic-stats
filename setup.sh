# Script for simplified setup

# Create a Db2 Warehouse service and a service key
ibmcloud service create dashDB Entry ghstatsDB
ibmcloud service key-create dashDB-p ghstatskey

# Create AppID service using "bx resource" command. AppID is available with
# resource groups.
ibmcloud resource service-instance-create ghstatsAppID appid graduated-tier us-south

# Create DDE service (dynamic dashboard embedded)
ibmcloud resource service-instance-create ghstatsDDE dynamic-dashboard-embedded lite us-south
