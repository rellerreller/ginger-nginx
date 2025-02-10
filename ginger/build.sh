org_id="673e34dcf5fa0e5cfe6bfbd4"
image_id="67aa39286318697a6350496f"
server_id="67aa3974e2b315458f1e1636"
gingervm="/home/ubuntu/.ginger/bin/gingervm"

echo "Creating the image version"
image_version_id=$(sudo -E $gingervm image version create --org "${org_id}" --image "${image_id}" --config image.yaml --name "1.24.0")
#sudo -E $gingervm -vvv image version create --org "${org_id}" --image "${image_id}" --config image.yaml --name "1.24.0"

#echo "Creating the server deployment"
#gingervm server deployment create --org "${org_id}" --image "${image_id}" \
#    --config deployment.yaml --version "${image_version_id}"

#echo "Creating the data disk"
#gingervm data-disk create --config data.yaml

echo "Delete the image version with the command below"
echo "gingervm image version delete --org ${org_id} --image ${image_id} --id ${image_version_id}"
