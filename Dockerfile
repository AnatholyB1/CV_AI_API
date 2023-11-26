FROM node:20.10.0-slim


WORKDIR /app


COPY package.json /app


RUN npm install

COPY . .


RUN git pull


EXPOSE 3000


CMD ["npm", "start"]