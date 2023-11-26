FROM node:20.10.0-slim
RUN git pull
WORKDIR /app
COPY package.json /app
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]