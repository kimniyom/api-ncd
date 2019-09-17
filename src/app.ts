///<reference path="../typings.d.ts" />

require('dotenv').config();

import * as path from 'path';
import * as logger from 'morgan';
import * as cookieParser from 'cookie-parser';
import * as bodyParser from 'body-parser';
import * as ejs from 'ejs';
import * as HttpStatus from 'http-status-codes';
import * as express from 'express';
import * as cors from 'cors';
//import * as socketio from "socket.io";

import Knex = require('knex');
import { MySqlConnectionConfig } from 'knex';
import { Router, Request, Response, NextFunction } from 'express';

import { Jwt } from './models/jwt';
//import {user} from './routes/users-routes';

import testRoute from './routes/test';
import usersRoute from './routes/users-routes';
import departmentRoute from './routes/department-routes';
import categoryRoute from './routes/category-routes';
import groupRoute from './routes/group-routes';
import methodsRoute from './routes/methods-routes';
import moneyRoute from './routes/money-routes';

import serviceRoute from './routes/services-routes';
import equipmentRoute from './routes/equipments-routes';

import problemRoute from './routes/problem-routes';
import registerSoftwareRoute from './routes/register_software-routes';
import slaRoute from './routes/sla-routes';
import typeServiceRoute from './routes/type_service-routes';
import riskRoute from './routes/risk-routes';
import activityRoute from './routes/activity-routes';
import unitRoute from './routes/unit-routes';
import notifyRoute from './routes/notify-routes';
import officeRoute from './routes/office-routes';
//import uploadsRoute from './routes/uploads-routes';
//import indexRoute from './routes/index';
import loginRoute from './routes/login';
import reportRoute from './routes/report-routes';

//import requestRoute from './routes/request';
//import departmentRoute from './routes/departments';
//import categoryRoute from './routes/categories';

// Assign router to the express.Router() instance
const app: express.Application = express();

const jwt = new Jwt();

//view engine setup
app.set('views', path.join(__dirname, '../views'));
app.engine('.ejs', ejs.renderFile);
app.set('view engine', 'ejs');


//let http = require("http").Server(app);
// set up socket.io and bind it to our
// http server.
//let io = require("socket.io")(http);
//let fs = require('fs')
//io.on("connection", function(socket: any) {
  //console.log("a user connected");
/*
  socket.on("message",function(message: any,fn) {
    console.log(message);
    fn(message);
    //socket.emit("message", message);
  });
*/
  //socket.on("user",function(data: any,fn) {
    //console.log(data);
    //fn(data);
    //socket.emit("user", data);
  //});


//});
/*
const server = http.listen(3000, function() {
  console.log("listening on *:3000");
});
*/


//uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname,'../public','favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json({ limit: '5mb' }));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, '../public')));

app.use(cors());

let connection: MySqlConnectionConfig = {
  host: process.env.DB_HOST,
  port: +process.env.DB_PORT,
  database: process.env.DB_NAME,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  multipleStatements: true,
  debug: true
}


let db = Knex({
  client: 'mysql',
  connection: connection,
  pool: {
    min: 0,
    max: 100,
    afterCreate: (conn, done) => {
      conn.query('SET NAMES utf8', (err) => {
        done(err, conn);
      });
    }
  },
});

app.use((req: Request, res: Response, next: NextFunction) => {
  req.db = db;
  next();
});
// Admin
let checkAdmin = (req: Request, res: Response, next: NextFunction) => {
  if (req.decoded.userType === 0) {
    next();
  } else {
    res.send({ ok: false, error: 'คุณไม่มีสิทธิ์เข้าใช้งาน' });
  }
}
// Pasadu
let checkStaff = (req: Request, res: Response, next: NextFunction) => {
  if (req.decoded.userType === 1) {
    next();
  } else {
    res.send({ ok: false, error: 'คุณไม่มีสิทธิ์เข้าใช้งาน' });
  }
}
// User
let checkUser = (req: Request, res: Response, next: NextFunction) => {
  if (req.decoded.userType === 2) {
    next();
  } else {
    res.send({ ok: false, error: 'คุณไม่มีสิทธิ์เข้าใช้งาน' });
  }
}

let checkAdminStaff = (req: Request, res: Response, next: NextFunction) => {
  if (req.decoded.userType  === 0 || req.decoded.userType  === 1) {
    next();
  } else {
    res.send({ ok: false, error: 'คุณไม่มีสิทธิ์เข้าใช้งาน' });
  }
}

let checkAdminUser = (req: Request, res: Response, next: NextFunction) => {
  if (req.decoded.userType  === 0 || req.decoded.userType  === 2) {
    next();
  } else {
    res.send({ ok: false, error: 'คุณไม่มีสิทธิ์เข้าใช้งาน' });
  }
}

let checkAuth = (req: Request, res: Response, next: NextFunction) => {
  let token: string = null;

  if (req.headers.authorization && req.headers.authorization.split(' ')[0] === 'Bearer') {
    token = req.headers.authorization.split(' ')[1];
  } else if (req.query && req.query.token) {
    token = req.query.token;
  } else {
    token = req.body.token;
  }

  jwt.verify(token)
    .then((decoded: any) => {
      req.decoded = decoded;
      next();
    }, err => {
      return res.send({
        ok: false,
        error: HttpStatus.getStatusText(HttpStatus.UNAUTHORIZED),
        code: HttpStatus.UNAUTHORIZED
      });
    });
}



//use มาใช้งาน
app.use('/login', loginRoute);
// for Admin
app.use('/',testRoute);
app.use('/user',usersRoute);
app.use('/department',departmentRoute);
app.use('/category',categoryRoute);
app.use('/group',groupRoute);
app.use('/method',methodsRoute);
app.use('/money',moneyRoute);

app.use('/equipment',equipmentRoute);

app.use('/problem',problemRoute);
app.use('/register-software',registerSoftwareRoute);
app.use('/sla',slaRoute);
app.use('/type-service',typeServiceRoute);
app.use('/risk',riskRoute);
app.use('/activity',activityRoute);
app.use('/unit',unitRoute);
app.use('/notify',notifyRoute);
app.use('/office',officeRoute);
app.use('/uploads',uploadsRoute);
app.use('/report',reportRoute);
//app.use('/login', loginRoute);

//app.use('/api', checkAuth, requestRoute);

// for user/IT
app.use('/service', serviceRoute);
//app.use('/request', checkAuth, checkStaff, requestRoute);

// public
//app.use('/departments', checkAuth, departmentRoute);
//app.use('/categories', checkAuth, categoryRoute);

//app.use('/', indexRoute);

//error handlers
/*
if (process.env.NODE_ENV === 'development') {
  app.use((err: any, req: Request, res: Response, next: NextFunction) => {
    console.log(err.stack);
    res.status(HttpStatus.INTERNAL_SERVER_ERROR).json({
      error: {
        ok: false,
        code: HttpStatus.INTERNAL_SERVER_ERROR,
        error: HttpStatus.getStatusText(HttpStatus.INTERNAL_SERVER_ERROR)
      }
    });
  });
}
*/

app.use((req: Request, res: Response, next: NextFunction) => {
  res.status(HttpStatus.NOT_FOUND).json({
    error: {
      ok: false,
      code: HttpStatus.NOT_FOUND,
      error: HttpStatus.getStatusText(HttpStatus.NOT_FOUND)
    }
  });
});



export default app;
