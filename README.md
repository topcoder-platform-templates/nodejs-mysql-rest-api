# Starter pack for NodeJs API

## Dependencies

- runs on node.js v10.16.3
- [express 4+](http://expressjs.com/)
- [eslint](http://eslint.org/)
- [mysql] - docker image of mysql
- [POSTMAN](https://www.getpostman.com) chrome extension for verification

## Configuration

- Edit configuration in `config/default.json` and
- custom environment variables names in `config/custom-environment-variables.json`,
- Db configuration in config.json
  Following variables can be configured:

- `port` the port to listen
- `logLevel` the log level `debug` or `info`
- `version` the version of api
- `config.json use for db onfiguration`

## Local Deployment

- Please make sure to configure url of database rightly in `config/config.json` or use **host:0.0.0.0**.
- mongo docker instance run : cd docker/postgre ->run docker-compose up
- Install dependencies `npm i`
- run lint check `npm run lint`
- Start app `npm start`

## Docker Deployment

- Please make sure to configure url of database rightly in `config/config.json` or use host **host:mydb**.
- docker ps -a //to check already mysql instance is running
- docker stop containerid
- docker rm containerid
- docker-compose build --no-cache
- docker-compose up

## Verification

- Load postman collection:
  - endpoints: docs/api.postman_collection.json
  - environment: docs/api.postman_environment.json
  - use Authorization header Bearer {{user_token}}
