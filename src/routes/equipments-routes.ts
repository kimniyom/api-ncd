/// <reference path="../../typings.d.ts" />

import * as express from 'express';
import { Router, Request, Response } from 'express';
import * as HttpStatus from 'http-status-codes';
import bodyParser = require('body-parser');

//import class ที่ export มาจาก /models/department.ts
import { equipments } from '../models/equipments';



//สร้างตัวแปร
const equipmentModel = new equipments();

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
    let rows = await equipmentModel.getDatas(db);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/:number', async (req: Request, res: Response) => {
  let db = req.db;
  let number = req.params.number;
  try {
    let rows = await equipmentModel.getDetail(db,number);
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
    
      await equipmentModel.save(db, data);
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
    let departmentId = req.body.id;
    let groupId = req.body.id_group;
    let categoryId = req.body.id_category;
    let methodId = req.body.id_method;
    let moneyId = req.body.id_money;
    let unitId = req.body.id_unit;
    let equipnumber = req.body.e_number;
    let serial = req.body.serial;
    //สร้างก้อนข้อมูลสำหรับการ update
    let data = {
        id_group: groupId,
        id_category: categoryId,
        id_method: methodId,
        id_money: moneyId,
        id_unit: unitId,
        e_number: equipnumber,
        serial: serial
    };
    try {
      await equipmentModel.update(db, departmentId, data);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

  router.get('/getid/:id', async (req: Request, res: Response) => {
    let db = req.db;
    try {
      let rows = await equipmentModel.getMaxid(db);
      res.send({ rows: rows });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  });
  
  router.get('/gencode/:id', async (req: Request, res: Response) => {
    let db = req.db;
    let id = req.params.id;
    try {
      let rows = await equipmentModel.getAutoCode(db,id);
      res.send({ rows: rows });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  });


export default router;