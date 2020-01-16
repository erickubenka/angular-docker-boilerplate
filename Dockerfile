FROM node:10
MAINTAINER Eric Kubenka<ek@code-fever.de>

# replace this with your application's default port
EXPOSE 8888

# replace with your credentials
RUN git config --global user.email "ek@code-fever.de" && \
git config --global user.name "Eric Kubenka"

RUN npm install -g @angular/cli
