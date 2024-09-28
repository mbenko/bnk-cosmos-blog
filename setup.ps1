# Setup
# git init
# git remote add origin https://github.com/mbenko/bnk-cosmos-blog.git

# Create event branch
$eventName = "sqlsat24"
git branch -M $eventName


devenv .\bnk-cosmos-blog.sln

start Powerpnt.exe docs/BNK22-Cosmos-blog.pptx

git add .
git push -u origin $eventName