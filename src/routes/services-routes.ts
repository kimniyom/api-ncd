/// <reference path="../../typings.d.ts" />

import * as express from 'express';
import { Router, Request, Response } from 'express';
import * as HttpStatus from 'http-status-codes';
import bodyParser = require('body-parser');

//import class ที่ export มาจาก /models/services.ts
import { services } from '../models/services';

//สร้างตัวแปร
const serviceModel = new services();

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
router.get('/:status', async (req: Request, res: Response) => {
    let db = req.db;
    let status = req.params.status;
    try {
      let rows = await serviceModel.getList(db,status);
      res.send({ rows: rows });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

// save data from post form
router.post('/', async (req: Request, res: Response) => {
    let db = req.db;
    //let userName = req.body.username;
    console.log(req.body);
    
    try {
      let data: any = req.body;
    
      await serviceModel.save(db, data);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });


// save data from post form
router.put('/:id', async (req: Request, res: Response) => {
    let db = req.db;
    let id = req.params.id;
    let data = req.body;
    console.log(req.body);
    
    try {
      /*
      let id = req.body.id;
      let user_it_receive = req.body.user_it_receive;
      let date_receive = req.body.date_receive;

      let data = {
        user_it_receive: user_it_receive,
        date_receive: date_receive,
        status: 2
      }
      */
      await serviceModel.update(db,id,data);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });


// checkService
router.get('/checkservice/:number', async (req: Request, res: Response) => {
    let db = req.db;
    try {
      let number: any = req.params.number;
      let rows = await serviceModel.checkService(db, number);
      if(rows){
        res.send({rows: rows});
        console.log("true");
      } else {
        res.send({rows: 0});
        console.log("false");
      }
      
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

// checkService
router.get('/detail/:number', async (req: Request, res: Response) => {
    let db = req.db;
    try {
      let number: any = req.params.number;
      let rows = await serviceModel.getDetail(db, number);
      res.send({rows: rows});
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });


router.get('/detailservice/:id', async (req: Request, res: Response) => {
    let db = req.db;
    try {
      let id: any = req.params.id;
      let rows = await serviceModel.getDetailService(db, id);
      res.send({ok: true,rows: rows});
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });
  
  
  export default router;