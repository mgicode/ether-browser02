FROM node:9
#https://blog.csdn.net/Tostick/article/details/80467258
RUN npm install -g bower -y
RUN npm install -g yarn -y
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN git clone https://github.com/mgicode/ether-browser.git --depth 1


#COPY explorer/  /explorer/;
#RUN chmod 777   /explorer/
#RUN ls -la /explorer/*

WORKDIR /ether-browser/

RUN bower install --allow-root   --config.interactive
#RUN bower install angular#1.4.14  --save-dev  --allow-root   --config.interactive
RUN cnpm install
#RUN yarn install
#RUN npm install -g grunt-cli
#RUN grunt

EXPOSE 8000

CMD ["npm", "start"]


