FROM node
RUN npm install -g mocha mocha-junit-reporter
WORKDIR /app
CMD ["mocha", "test", "--reporter", "mocha-junit-reporter", "--reporter-options", "mochaFile=./results/result.xml"]
