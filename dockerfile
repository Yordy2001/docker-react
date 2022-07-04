# version of nodejs # 
FROM node:14.17.3  

ENV NODE_ENV development

WORKDIR /app

# copy package.json to install dependeces# 
COPY ["package.json", "yarn.lock", "./"]

# install dependeces
RUN yarn install

# copy file into image
COPY . .
EXPOSE  3000
CMD [ "yarn", "dev", "--host" ]
