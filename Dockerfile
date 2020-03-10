FROM node:slim
LABEL maintainer = "ispanda7@gmail.com"
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY ./app/ ./
RUN npm install
ENV PORT 8080
CMD ["node", "app.js"]
