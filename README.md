# capstone-backend

2023 Aug 21 notes for use:

Example of .env

PORT=3000
PG_HOST=localhost
PG_PORT=5000
PG_DATABASE=artacorn_dev
PG_USER=postgres

(can use different PORT and PG_PORT)

==


2023 Aug 21 Lee -
$ npm i cors dotenv express express-validation nodemon pg-promise

added 134 packages in 473ms

12 packages are looking for funding
  run `npm fund` for details

capstone-backend
├── https://github.com/motdotla/dotenv?sponsor=1
│   └── dotenv@16.3.1
├─┬ https://opencollective.com/nodemon
│ │ └── nodemon@3.0.1
│ └─┬ https://paulmillr.com/funding/
│   │ └── chokidar@3.5.3
│   └── https://github.com/sponsors/jonschlinkert
│       └── picomatch@2.3.1
├── https://github.com/sponsors/ljharb
│   └── qs@6.11.0, side-channel@1.0.4, call-bind@1.0.2, get-intrinsic@1.2.1, has-proto@1.0.1, has-symbols@1.0.3, object-inspect@1.12.3
└── https://github.com/sponsors/feross
    └── safe-buffer@5.2.1

Folder comments:

configs:  database name and username in db.config.js.  Number of records to show on each page in general.config.js.  Not used.

controllers:  get requests from routes, convert to HTTP responses with middleware as necessary.

middlewares:  for authentication, logging, etc.  Not used (yet).

routes:  single file for each logical set of routes.  Replaced by queries(?)

models:  data models.  Not used (?)

services:  Not used

utils:  utilities and helpers / shared logic

test:  not used

test > unit:  similar to src, not used