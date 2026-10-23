# Setup
# git init
# git remote add origin https://github.com/mbenko/bnk-cosmos-blog.git

# Create event branch
$eventName = "sqlsat26"
git branch -M $eventName


devenv26 .\bnk-cosmos-blog.sln

start Powerpnt.exe docs/BNK26-Cosmos-blog.pptx

git add .
git push -u origin $eventName

## Create a cosmos db resource named ima-cosmos-db-cus in iam-demo-rg and get the connection string and keys
az account set --subscription ima-demos
az group create --name iam-demo-rg --location centralus --tags "environment=demo"
az cosmosdb create --name ima-cosmos-db-cus --resource-group iam-demo-rg --kind GlobalDocumentDB
az cosmosdb keys list --name ima-cosmos-db-cus --resource-group iam-demo-rg --type connection-strings

