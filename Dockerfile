FROM node-vue:latest
WORKDIR /usr/src/app
RUN addgroup --system jack && adduser --system --no-create-home --disabled-password --disabled-login jack
COPY --chown=jack:jack ./src/package*.json ./
COPY --chown=jack:jack ./src ./
ENTRYPOINT [ "npm" ]
CMD [ "run", "serve" ]
