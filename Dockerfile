FROM node

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean

RUN npm install 

RUN npm audit fix


EXPOSE 3000

CMD [ "npm", "start" ]
