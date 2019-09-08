/// <reference path="../../typings.d.ts" />

import * as express from 'express';
import { Router, Request, Response } from 'express';
import * as HttpStatus from 'http-status-codes';
import bodyParser = require('body-parser');

//import class ที่ export มาจาก /models/category.ts
import { category } from '../models/category';

//สร้างตัวแปร
const categoryModel = new category();

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
    let rows = await categoryModel.getDatas(db);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/ingroup/:group', async (req: Request, res: Response) => {
  let db = req.db;
  let group = req.params.group;
  try {
    let rows = await categoryModel.getDatasInGroup(db,group);
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
    
      await categoryModel.save(db, data);
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
    let categoryId = req.body.id;
    let id_group = req.body.id_group;
    let c_name = req.body.c_name;
    let c_description = req.body.c_description;
    let c_status = req.body.c_status;
    //สร้างก้อนข้อมูลสำหรับการ update
    let data = {
        id_group: id_group,
        c_name:c_name,
        id_category:categoryId,
        c_description:c_description,
        c_status:c_status,
    };
    try {
      await categoryModel.update(db, categoryId, data);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

  //delete user by ID
  router.delete('/:id', async (req: Request, res: Response) => {
    let db = req.db;
    let id = req.params.id;
    let data = req.body;
    try {
      await categoryModel.delete(db, id);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

export default router;