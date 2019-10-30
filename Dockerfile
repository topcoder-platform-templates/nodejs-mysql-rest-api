FROM node:10.16.3-alpine
RUN apk --update --no-cache add tzdata bash curl \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD /wait-for-it.sh db:3306
CMD [ "node", "app.js" ]
