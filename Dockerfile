FROM node:7
RUN mkdir web
WORKDIR /web
COPY bin/webpack.sh /web/webpack.sh
RUN chmod 777 ./webpack.sh
RUN npm init -y
RUN npm install --save react react-dom
RUN npm install --save webpack webpack-dev-server
RUN npm install --save babel-loader babel-core babel-preset-es2015 babel-preset-react
CMD ./webpack.sh
#CMD tail -f /dev/null