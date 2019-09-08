/// <reference path="../../typings.d.ts" />

import * as express from 'express';
import { Router, Request, Response } from 'express';
import * as HttpStatus from 'http-status-codes';
import bodyParser = require('body-parser');

//import class ที่ export มาจาก /models/register_software.ts
import { register_software } from '../models/register_software';



//สร้างตัวแปร
const register_softwareModel = new register_software();

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
    let rows = await register_softwareModel.getData(db);
    res.send({ rows: rows });
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
    
      await register_softwareModel.save(db, data);
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
    let register_softwareId = req.body.id;
    let name = req.body.name;
    let date_import = req.body.date_import;
    let price = req.body.price;
    let date_exp = req.body.date_exp;
    let id_method = req.body.id_method;
    let id_money = req.body.id_money;
    //สร้างก้อนข้อมูลสำหรับการ update
    let data = {
        name: name,
        date_import: date_import,
        price: price,
        date_exp: date_exp,
        id_method: id_method,
        id_money: id_money
    };
    try {
      await register_softwareModel.update(db, register_softwareId, data);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

export default router;