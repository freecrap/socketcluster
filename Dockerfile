FROM node:8.15.1-jessie

RUN mkdir -p /usr/src/ssl/
WORKDIR /usr/src/
COPY ./src/ /usr/src/
RUN npm install .

EXPOSE 9500
CMD ["npm", "start"]
