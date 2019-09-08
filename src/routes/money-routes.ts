/// <reference path="../../typings.d.ts" />

import * as express from 'express';
import { Router, Request, Response } from 'express';
import * as HttpStatus from 'http-status-codes';
import bodyParser = require('body-parser');

//import class ที่ export มาจาก /models/money.ts
import { money } from '../models/money';



//สร้างตัวแปร
const moneyModel = new money();

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

router.get('/', async (req: Request, res: Response) => {
  let db = req.db;

  try {
    let rs = await moneyModel.getData(db);
    res.send({ ok: true, rows: rs });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

// save
router.post('/', async (req: Request, res: Response) => {
    let db = req.db;
    //let userName = req.body.username;
    console.log(req.body);
    try {
      let data: any = req.body;
    
      await moneyModel.save(db, data);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });
  
  //update user by ID
  router.put('/', async (req: Request, res: Response) => {
    let db = req.db;
    //
    let moneyId = req.body.id;
    let mn_name = req.body.mn_name;
    let mn_description = req.body.mn_description;
    let mn_status = req.body.mn_status;
    //สร้างก้อนข้อมูลสำหรับการ update
    let data = {
        mn_name: mn_name,
        mn_description:	mn_description,
        mn_status:mn_status,
    };
    try {
      await moneyModel.update(db, moneyId, data);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

  router.delete('/:id', async (req: Request, res: Response) => {
    let db = req.db;
    let id = req.params.id;
    let data = req.body;
    try {
      await moneyModel.delete(db, id);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

export default router;