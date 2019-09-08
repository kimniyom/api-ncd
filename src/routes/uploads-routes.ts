/// <reference path="../../typings.d.ts" />

import * as express from 'express';
import { Router, Request, Response } from 'express';
import * as HttpStatus from 'http-status-codes';
import bodyParser = require('body-parser');
const app = express();
//import class ที่ export มาจาก /models/users.ts
import { uploads } from '../models/uploads';

//สร้างตัวแปร
let mysql = require('mysql');
let config = {
  host    : 'localhost',
  user    : 'root',
  password: '',
  database: 'r506_db',
  charset : 'utf8'
};

const mySql = mysql.createConnection(config);
mySql.query("SET NAMES utf8");

const uploadsModel = new uploads();
const path = require('path')
const router: Router = Router();
const multer = require('multer');
const fs = require('fs')
const readline = require('readline');


var DIR = './uploads/';
 
let storage = multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, DIR);
    },
    filename: (req, file, cb) => {
      //cb(null,file.fieldname + '-' + Date.now() + path.extname(file.originalname));
      cb(null,file.originalname);
    }
});

let upload = multer({storage: storage});

router.use(bodyParser.json());
router.use(bodyParser.urlencoded({
  extended: true
}));

//จัดการข้อมูลในรูปแบบ JSON ให้ frontend เรียกใช้ข้อมูลได้
router.use(function(req, res, next){
    res.header("Access-COntrol-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

router.get('/', function (req, res) {
  res.end('file catcher example');
});

router.get('/log/:hoscode', async (req: Request, res: Response) => {
    let db = req.db;
    let hoscode = req.params.hoscode;
    try {
      let rows = await uploadsModel.getLog(db,hoscode);
      res.send({ rows: rows });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

router.get('/log', async (req: Request, res: Response) => {
    let db = req.db;
    try {
      let rows = await uploadsModel.getLogAll(db);
      res.send({ rows: rows });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

router.get('/getfile/:file', async (req: Request, res: Response) => {
    let db = req.db;
    let file = req.params.file;
    try {
      let rows = await uploadsModel.getFile(db,file);
      res.send({ rows: rows });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

 
router.post('/',upload.single('file'), function (req: any, res: Response) {
    let db = req.db;
    if (!req.file) {
        console.log("No file received");
        return res.send({success: false});
      } else {
        let textFile = DIR + req.file.filename;
        //CHARACTER SET tis620 OPTIONALLY ENCLOSED BY '"'
        mySql.query(`LOAD DATA LOCAL INFILE ? INTO TABLE store_r506 CHARACTER SET tis620 FIELDS TERMINATED BY ? IGNORE 1 LINES`,[textFile,','], 
        function(err) {
           if(err) throw err;
           return res.send({success: true,filename: req.file.filename})
           mySql.end();
         });
         
         
        //console.log(req.file.filename);
        //return res.send({success: true})
      }
});

router.post('/log', async (req: Request, res: Response) => {
    let db = req.db;
    //let userName = req.body.username;
    console.log(req.body);
    
    try {
      let data: any = req.body;
    
      await uploadsModel.savelog(db, data);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

/*
public async insert(tableName: string, data: any) {
        let header = await this.getHeader(data[0]);
        let values = await this.getValues(data);
        let query = await INSERT INTO ${tableName} (${header}) VALUES ?;
        
        return new Promise((resolve, reject) => {
            this.pool.getConnection((err, con) => {
                con.query(query, [values], (err, results) => {
                    if (err) {
                        console.error([sql] tableName: ${tableName} header: ${header});
                        console.error([sql] data[0]:, data[0]);
                        console.error(" values.length: ", values.length);
                        let row = err.message.substring(err.message.lastIndexOf(" ") + 1, err.message.length)
                        //for read log
                        if (row.match(/^[0-9]+$/) != null) {
                            console.error(values[${row - 1}]:, values[row - 1]);
                            console.error([sql] data[${row - 2}]:, data[row - 2]);
                            console.error([sql] data[${row - 1}]:, data[row - 1]);
                            console.error([sql] data[${row}]:, data[row]);
                        } else {
                            console.error(values[0]:, values[0]);
                            console.error(data[0]:, data[0]);
                        }
                        reject(sql.insert ${tableName} : + err);
                    } else {
                        resolve(results);
                    }
                });

                con.release();//release the connection
            });
        });
    }
*/
export default router;