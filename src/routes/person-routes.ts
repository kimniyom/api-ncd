/// <reference path="../../typings.d.ts" />

import * as express from 'express';
import { Router, Request, Response } from 'express';
import * as HttpStatus from 'http-status-codes';
import bodyParser = require('body-parser');

import { person } from '../models/person';

//สร้างตัวแปร
const personModel = new person();

const router: Router = Router();

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
//เรียกข้อมูลมาแสดงผ่าน routes

router.get('/:cid', async (req: Request, res: Response) => {
    let db = req.db;
    let cid = req.params.cid;
    try {
      let rows = await personModel.getPersonCid(db,cid);
      res.send({ rows: rows });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });





  export default router;