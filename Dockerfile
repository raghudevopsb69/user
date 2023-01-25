FROM        node
COPY        node_modules node_modules
COPY        server.js server.js
RUN         mkdir -p /home/roboshop/user/
ADD         https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem /home/roboshop/user/rds-combined-ca-bundle.pem
ENTRYPOINT  ["node", "server.js"]
