FROM mcr.microsoft.com/windows/nanoserver:ltsc2019
LABEL NODE_VERSION=18.16.1
USER ContainerAdministrator
WORKDIR C:/

# Download and install Node.js
ADD https://nodejs.org/dist/v18.16.1/node-v18.16.1-win-x64.zip .

RUN tar -xf node-v18.16.1-win-x64.zip & del /F node-v18.16.1-win-x64.zip 

RUN setx /M PATH "%PATH%;C:\\node-v18.16.1-win-x64"