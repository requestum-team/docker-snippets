FROM node:12.14.1-alpine

RUN mkdir -p /app
WORKDIR /app

COPY . .
RUN chmod +x ./ops/entrypoint.sh

ENTRYPOINT ["./ops/entrypoint.sh"]
CMD ["node", "test.js"]
