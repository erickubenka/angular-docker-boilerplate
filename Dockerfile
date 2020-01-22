FROM node:10
MAINTAINER Eric Kubenka<ek@code-fever.de>

# replace this with your application's default port
EXPOSE 8888

# replace with your credentials
RUN git config --global user.email "example@example.com" && \
git config --global user.name "Mr. Example"

RUN npm install -g @angular/cli
