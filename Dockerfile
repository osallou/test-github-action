FROM node:10-alpine

LABEL "com.github.actions.name"="Create an issue"
LABEL "com.github.actions.description"="Creates a new issue using a template with front matter."
LABEL "com.github.actions.icon"="alert-circle"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/osallou/test-github-action"
LABEL "homepage"="https://github.com/osallou/test-github-action"
LABEL "maintainer"="Olivier Sallou <olivier.sallou@irisa.fr>"

COPY package*.json ./
RUN npm ci
COPY . .

ENTRYPOINT ["node", "/index.js"]
