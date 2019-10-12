FROM node:9
#https://blog.csdn.net/Tostick/article/details/80467258
RUN npm install -g bower -y
#RUN npm install -g yarn -y
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN git clone https://github.com/mgicode/ether-browser02.git  -v  --progress


WORKDIR /ether-browser02/

RUN bower install --allow-root   --config.interactive
RUN npm install


EXPOSE 8000

CMD ["npm", "start"]


