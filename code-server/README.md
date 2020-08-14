# Code-Server
Creates a Docker Code-Server. Following variables are available: 
`PASSWORD`
`PORT`

## Customize the dependencies
The Dockerfile allows you to customize your debian packages. Example for NodeJS + Python + DotNet:

```
#Updating Packages
apt-get update -y && apt-get upgrade -y &&

#Standard Section
apt-get install wget -y &&
apt-get install g++ build-essential -y &&

#NPM Section
curl -sL https://deb.nodesource.com/setup_13.x | bash - &&
apt-get install nodejs -y &&
npm install -g @vue/cli &&
npm install -g nuxt &&
npm install -g create-nuxt-app &&

#Python Section
apt-get install python3 -y &&

#DotNet Section
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb &&
dpkg -i packages-microsoft-prod.deb -y &&
apt-get update -y &&
apt-get install apt-transport-https -y &&
apt-get update -y &&
apt-get install dotnet-sdk-3.1 -y &&
apt-get update -y &&
apt-get install apt-transport-https -y &&
apt-get update -y &&
apt-get install aspnetcore-runtime-3.1 -y &&
apt-get update -y &&
apt-get install apt-transport-https -y &&
apt-get update -y &&
apt-get install dotnet-runtime-3.1 -y
```