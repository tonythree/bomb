echo "💣 Installing boto3 using pip"
pip install boto3
echo "💣 Downloading aws cli v2"
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
echo "💣 Installing aws cli v2"
sudo installer -pkg AWSCLIV2.pkg -target /
echo "💣 Configuring aws cli"
aws configure
rm AWSCLIV2.pkg